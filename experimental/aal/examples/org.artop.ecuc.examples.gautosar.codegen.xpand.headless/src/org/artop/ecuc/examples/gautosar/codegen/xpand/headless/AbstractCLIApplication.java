/**
 * <copyright>
 * 
 * Copyright (c) See4sys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.examples.gautosar.codegen.xpand.headless;

import java.util.Map;

import org.apache.commons.cli.BasicParser;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.GnuParser;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import org.apache.commons.cli.Parser;
import org.apache.commons.cli.PosixParser;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;

public abstract class AbstractCLIApplication implements IApplication {
	private static String HELP_OPTION = "help"; //$NON-NLS-1$

	private Options options = new Options();
	private CommandLineParser parser;
	private String[] applicationArgs;
	private CommandLine commandLine = null;

	public Object start(IApplicationContext context) {
		try {
			initApplicationArgs(context);

			// Definition stage
			defineOptions();

			// Parsing stage
			parse();

			// Interrogation stage
			return interrogate();

		} catch (Throwable t) {
			handleError(t);
		}
		return 0;
	}

	/**
	 * @return application Name used for display
	 */
	protected abstract String getApplicationName();

	protected String[] getApplicationArgs() {
		return applicationArgs;
	}

	/**
	 * Retrieve the application specific arguments.
	 * 
	 * @param context
	 */
	private void initApplicationArgs(IApplicationContext context) {
		Map<?, ?> arguments = context.getArguments();
		Object applicationArgs = arguments.get(IApplicationContext.APPLICATION_ARGS);
		if (applicationArgs instanceof String[]) {
			this.applicationArgs = (String[]) applicationArgs;
		} else {
			this.applicationArgs = new String[0];
		}
	}

	/**
	 * Return all the options defined for parsing command line.
	 * 
	 * @return {@link Options} containing application command line parsing {@link Option}s.
	 */
	protected Options getOptions() {
		return options;
	}

	/**
	 * Register an {@link Option} to use for parsing command line.
	 * 
	 * @param option
	 */
	protected void addOption(Option option) {
		if (option != null) {
			options.addOption(option);
		}
	}

	/**
	 * Returns the {@link CommandLine} resulting of the parsing operation on application arguments.
	 * 
	 * @return The {@link CommandLine} resulting of the parsing operation on application arguments.
	 */
	protected CommandLine getCommandLine() {
		return commandLine;
	}

	/**
	 * Creates the instance of parser used for parsing application arguments.Three kind of predefined parser can be
	 * created , {@link BasicParser}, {@link GnuParser}, {@link PosixParser} and any of user defined parser extending
	 * {@link Parser}.
	 * 
	 * @return The Instance of {@link CommandLineParser} used for parsing application arguments.
	 */
	protected abstract CommandLineParser createParser();

	/**
	 * Returns the Instance of {@link CommandLineParser} used for parsing application arguments.
	 * 
	 * @return The Instance of {@link CommandLineParser} used for parsing application arguments.
	 */
	protected CommandLineParser getParser() {
		if (parser == null) {
			parser = createParser();
		}
		return parser;
	}

	/**
	 * Lets define the set of {@link Option}s used for parsing the application arguments. see {@link Options} for more
	 * details.Note that the help option is defined by default, user wanting to keep that option defined must overload
	 * this method and call super.defineOptions() inside overloaded method.
	 */
	protected void defineOptions() {
		Option help = new Option(HELP_OPTION, "print help documentation"); //$NON-NLS-1$
		options.addOption(help);
	}

	/**
	 * Implements parsing operation on application arguments.
	 * 
	 * @throws ParseException
	 */
	protected void parse() throws ParseException {
		commandLine = getParser().parse(options, applicationArgs);
	}

	/**
	 * Implements interrogation stage after parsing operation occurred. Let define the behavior of the application when
	 * an option is detected in application arguments.Note that by default the help option is evaluated and its default
	 * behavior is applied, user wanting to keep that default behavior must overload this method and call
	 * super.interrogate() in overloaded method.
	 */
	protected Object interrogate() throws Throwable {
		if (commandLine != null) {
			if (commandLine.hasOption(HELP_OPTION)) {
				printHelp();
			}
		}
		return 1;
	}

	/**
	 * @param ex
	 */
	protected void handleError(Throwable t) {
		System.err.println(t.getMessage());
	}

	/**
	 * Default implementation of the default help option behavior.
	 */
	protected void printHelp() {
		HelpFormatter formatter = new HelpFormatter();
		formatter.printHelp(getApplicationName(), options);
	}

	/*
	 * @see org.eclipse.equinox.app.IApplication#stop()
	 */
	public void stop() {
	}
}
