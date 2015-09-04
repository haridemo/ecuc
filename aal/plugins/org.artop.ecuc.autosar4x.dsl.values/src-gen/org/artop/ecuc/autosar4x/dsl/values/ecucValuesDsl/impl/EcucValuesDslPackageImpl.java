/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl;

import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;

import autosar40.bswmodule.bswinterfaces.BswinterfacesPackage;

import autosar40.bswmodule.bswoverview.BswoverviewPackage;

import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;

import autosar40.commonstructure.axis.AxisPackage;

import autosar40.commonstructure.basetypes.BasetypesPackage;

import autosar40.commonstructure.calibrationparameter.CalibrationparameterPackage;

import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;

import autosar40.commonstructure.constants.ConstantsPackage;

import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;

import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;

import autosar40.commonstructure.filter.FilterPackage;

import autosar40.commonstructure.flatmap.FlatmapPackage;

import autosar40.commonstructure.globalconstraints.GlobalconstraintsPackage;

import autosar40.commonstructure.implementation.ImplementationPackage;

import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;

import autosar40.commonstructure.internalbehavior.InternalbehaviorPackage;

import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;

import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;

import autosar40.commonstructure.resourceconsumption.ResourceconsumptionPackage;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;

import autosar40.commonstructure.resourceconsumption.heapusage.HeapusagePackage;

import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;

import autosar40.commonstructure.resourceconsumption.stackusage.StackusagePackage;

import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;

import autosar40.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;

import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;

import autosar40.commonstructure.systemconstant.SystemconstantPackage;

import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationPackage;

import autosar40.diagnosticextract.commondiagnostics.CommondiagnosticsPackage;

import autosar40.diagnosticextract.dcm.DcmPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.cleardiagnosticinfo.CleardiagnosticinfoPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.commonservice.CommonservicePackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.communicationcontrol.CommunicationcontrolPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.controldtcsetting.ControldtcsettingPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.databyidentifier.DatabyidentifierPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.dynamicallydefinedataidentifier.DynamicallydefinedataidentifierPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.ecureset.EcuresetPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.iocontrol.IocontrolPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.memorybyaddress.MemorybyaddressPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.readdatabyperiodicid.ReaddatabyperiodicidPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.readdtcinformation.ReaddtcinformationPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.requestfiletransfer.RequestfiletransferPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.responseonevent.ResponseoneventPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.routinecontrol.RoutinecontrolPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.securityaccess.SecurityaccessPackage;

import autosar40.diagnosticextract.dcm.diagnosticservice.sessioncontrol.SessioncontrolPackage;

import autosar40.diagnosticextract.dem.diagnosticaging.DiagnosticagingPackage;

import autosar40.diagnosticextract.dem.diagnosticcondition.DiagnosticconditionPackage;

import autosar40.diagnosticextract.dem.diagnosticconditiongroup.DiagnosticconditiongroupPackage;

import autosar40.diagnosticextract.dem.diagnosticdebouncingalgorithm.DiagnosticdebouncingalgorithmPackage;

import autosar40.diagnosticextract.dem.diagnosticevent.DiagnosticeventPackage;

import autosar40.diagnosticextract.dem.diagnosticextendeddatarecord.DiagnosticextendeddatarecordPackage;

import autosar40.diagnosticextract.dem.diagnosticfreezeframe.DiagnosticfreezeframePackage;

import autosar40.diagnosticextract.dem.diagnosticindicator.DiagnosticindicatorPackage;

import autosar40.diagnosticextract.dem.diagnosticmapping.DiagnosticmappingPackage;

import autosar40.diagnosticextract.dem.diagnosticoperationcycle.DiagnosticoperationcyclePackage;

import autosar40.diagnosticextract.dem.diagnostictroublecode.DiagnostictroublecodePackage;

import autosar40.diagnosticextract.diagnosticcommonprops.DiagnosticcommonpropsPackage;

import autosar40.diagnosticextract.diagnosticcontribution.DiagnosticcontributionPackage;

import autosar40.ecucparameterdef.EcucparameterdefPackage;

import autosar40.ecuresource.EcuresourcePackage;

import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;

import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;

import autosar40.genericstructure.buildactionmanifest.BuildactionmanifestPackage;

import autosar40.genericstructure.documentationonm1.Documentationonm1Package;

import autosar40.genericstructure.formulalanguage.FormulalanguagePackage;

import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;

import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefPackage;

import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectPackage;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.AnnotationPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.NotePackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.InlineattributeenumsPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataPackage;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;

import autosar40.genericstructure.generaltemplateclasses.elementcollection.ElementcollectionPackage;

import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationPackage;

import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;

import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionaltimePackage;

import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;

import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataPackage;

import autosar40.genericstructure.generaltemplateclasses.tagwithoptionalvalue.TagwithoptionalvaluePackage;

import autosar40.genericstructure.rolesandrights.RolesandrightsPackage;

import autosar40.genericstructure.varianthandling.VarianthandlingPackage;

import autosar40.genericstructure.varianthandling.attributevaluevariationpoints.AttributevaluevariationpointsPackage;

import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;

import autosar40.standardization.blueprintformula.BlueprintformulaPackage;

import autosar40.standardization.blueprintmapping.BlueprintmappingPackage;

import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;

import autosar40.swcomponent.communication.CommunicationPackage;

import autosar40.swcomponent.components.ComponentsPackage;

import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;

import autosar40.swcomponent.composition.CompositionPackage;

import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;

import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;

import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;

import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;

import autosar40.swcomponent.datatype.units.UnitsPackage;

import autosar40.swcomponent.endtoendprotection.EndtoendprotectionPackage;

import autosar40.swcomponent.implicitcommunicationbehavior.ImplicitcommunicationbehaviorPackage;

import autosar40.swcomponent.implicitcommunicationbehavior.instanceref.InstancerefPackage;

import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesPackage;

import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;

import autosar40.swcomponent.portinterface.PortinterfacePackage;

import autosar40.swcomponent.rptscenario.RptscenarioPackage;

import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationPackage;

import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;

import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;

import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;

import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;

import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludeddatatypesPackage;

import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsPackage;

import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;

import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;

import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;

import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;

import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableentityPackage;

import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;

import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;

import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerPackage;

import autosar40.system.SystemPackage;

import autosar40.system.datamapping.DatamappingPackage;

import autosar40.system.diagnosticconnection.DiagnosticconnectionPackage;

import autosar40.system.ecuresourcemapping.EcuresourcemappingPackage;

import autosar40.system.fibex.cddsupport.CddsupportPackage;

import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationPackage;

import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;

import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;

import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;

import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;

import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;

import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;

import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;

import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcancommunicationPackage;

import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;

import autosar40.system.fibex.fibexcore.FibexcorePackage;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;

import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;

import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;

import autosar40.system.globaltime.GlobaltimePackage;

import autosar40.system.networkmanagement.NetworkmanagementPackage;

import autosar40.system.pncmapping.PncmappingPackage;

import autosar40.system.signalpaths.SignalpathsPackage;

import autosar40.system.swmapping.SwmappingPackage;

import autosar40.system.transformer.TransformerPackage;

import autosar40.system.transportprotocols.TransportprotocolsPackage;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.AbstractContext;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContainedElement;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslFactory;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EnumValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.SimpleValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.StringValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

import org.eclipse.emf.ecore.impl.EPackageImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class EcucValuesDslPackageImpl extends EPackageImpl implements EcucValuesDslPackage
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass modelEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass moduleEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass containedElementEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass containerEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass parameterEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass referenceEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass instanceReferenceEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass referenceValueEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass instanceReferenceValueEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass abstractContextEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass simpleValueEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass stringValueEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass enumValueEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass booleanValueEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass numericValueEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass tagEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass contextChainEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass contextEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EEnum booleanLiteralEEnum = null;

  /**
   * Creates an instance of the model <b>Package</b>, registered with
   * {@link org.eclipse.emf.ecore.EPackage.Registry EPackage.Registry} by the package
   * package URI value.
   * <p>Note: the correct way to create the package is via the static
   * factory method {@link #init init()}, which also performs
   * initialization of the package, or returns the registered package,
   * if one already exists.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.eclipse.emf.ecore.EPackage.Registry
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#eNS_URI
   * @see #init()
   * @generated
   */
  private EcucValuesDslPackageImpl()
  {
    super(eNS_URI, EcucValuesDslFactory.eINSTANCE);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private static boolean isInited = false;

  /**
   * Creates, registers, and initializes the <b>Package</b> for this model, and for any others upon which it depends.
   * 
   * <p>This method is used to initialize {@link EcucValuesDslPackage#eINSTANCE} when that field is accessed.
   * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #eNS_URI
   * @see #createPackageContents()
   * @see #initializePackageContents()
   * @generated
   */
  public static EcucValuesDslPackage init()
  {
    if (isInited) return (EcucValuesDslPackage)EPackage.Registry.INSTANCE.getEPackage(EcucValuesDslPackage.eNS_URI);

    // Obtain or create and register package
    EcucValuesDslPackageImpl theEcucValuesDslPackage = (EcucValuesDslPackageImpl)(EPackage.Registry.INSTANCE.get(eNS_URI) instanceof EcucValuesDslPackageImpl ? EPackage.Registry.INSTANCE.get(eNS_URI) : new EcucValuesDslPackageImpl());

    isInited = true;

    // Initialize simple dependencies
    EcucparameterdefPackage.eINSTANCE.eClass();
    ArobjectPackage.eINSTANCE.eClass();
    IdentifiablePackage.eINSTANCE.eClass();
    RolesandrightsPackage.eINSTANCE.eClass();
    PrimitivetypesPackage.eINSTANCE.eClass();
    AttributevaluevariationpointsPackage.eINSTANCE.eClass();
    FormulaPackage.eINSTANCE.eClass();
    FormulalanguagePackage.eINSTANCE.eClass();
    ArpackagePackage.eINSTANCE.eClass();
    AbstractblueprintstructurePackage.eINSTANCE.eClass();
    ElementcollectionPackage.eINSTANCE.eClass();
    VarianthandlingPackage.eINSTANCE.eClass();
    MultilanguagedataPackage.eINSTANCE.eClass();
    BlockelementsPackage.eINSTANCE.eClass();
    AdmindataPackage.eINSTANCE.eClass();
    SinglelanguagedataPackage.eINSTANCE.eClass();
    SpecialdataPackage.eINSTANCE.eClass();
    AnnotationPackage.eINSTANCE.eClass();
    EngineeringobjectPackage.eINSTANCE.eClass();
    autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage.eINSTANCE.eClass();
    PaginationandviewPackage.eINSTANCE.eClass();
    FigurePackage.eINSTANCE.eClass();
    BlueprintmappingPackage.eINSTANCE.eClass();
    AnyinstancerefPackage.eINSTANCE.eClass();
    SystemconstantPackage.eINSTANCE.eClass();
    ComputationmethodPackage.eINSTANCE.eClass();
    BlueprintformulaPackage.eINSTANCE.eClass();
    LanguagedatamodelPackage.eINSTANCE.eClass();
    OasisexchangetablePackage.eINSTANCE.eClass();
    ListelementsPackage.eINSTANCE.eClass();
    NotePackage.eINSTANCE.eClass();
    RequirementstracingPackage.eINSTANCE.eClass();
    GerneralparametersPackage.eINSTANCE.eClass();
    ChaptersPackage.eINSTANCE.eClass();
    InlinetextmodelPackage.eINSTANCE.eClass();
    GeneralannotationPackage.eINSTANCE.eClass();
    ImplementationdatatypesPackage.eINSTANCE.eClass();
    AbstractstructurePackage.eINSTANCE.eClass();
    DatadefpropertiesPackage.eINSTANCE.eClass();
    UnitsPackage.eINSTANCE.eClass();
    MsrqueryPackage.eINSTANCE.eClass();
    Documentationonm1Package.eINSTANCE.eClass();
    InlinetextelementsPackage.eINSTANCE.eClass();
    DatatypesPackage.eINSTANCE.eClass();
    ComponentsPackage.eINSTANCE.eClass();
    DatadictionaryproxiesPackage.eINSTANCE.eClass();
    BswinterfacesPackage.eINSTANCE.eClass();
    BasetypesPackage.eINSTANCE.eClass();
    AuxillaryobjectsPackage.eINSTANCE.eClass();
    CalibrationparameterPackage.eINSTANCE.eClass();
    GlobalconstraintsPackage.eINSTANCE.eClass();
    ConstantsPackage.eINSTANCE.eClass();
    RecordlayoutPackage.eINSTANCE.eClass();
    MultidimensionaltimePackage.eINSTANCE.eClass();
    InlineattributeenumsPackage.eINSTANCE.eClass();
    ModedeclarationPackage.eINSTANCE.eClass();
    PortinterfacePackage.eINSTANCE.eClass();
    DataprototypesPackage.eINSTANCE.eClass();
    CommunicationPackage.eINSTANCE.eClass();
    ApplicationattributesPackage.eINSTANCE.eClass();
    ImplementationPackage.eINSTANCE.eClass();
    SwcinternalbehaviorPackage.eINSTANCE.eClass();
    InstancerefsPackage.eINSTANCE.eClass();
    EcuresourcePackage.eINSTANCE.eClass();
    NvblockcomponentPackage.eINSTANCE.eClass();
    InstantiationdatadefpropsPackage.eINSTANCE.eClass();
    SoftwarecomponentdocumentationPackage.eINSTANCE.eClass();
    ImplicitcommunicationbehaviorPackage.eINSTANCE.eClass();
    CompositionPackage.eINSTANCE.eClass();
    ModedeclarationgroupPackage.eINSTANCE.eClass();
    TriggerdeclarationPackage.eINSTANCE.eClass();
    ServercallPackage.eINSTANCE.eClass();
    RteeventsPackage.eINSTANCE.eClass();
    DataelementsPackage.eINSTANCE.eClass();
    MeasurementcalibrationsupportPackage.eINSTANCE.eClass();
    BswoverviewPackage.eINSTANCE.eClass();
    ServiceneedsPackage.eINSTANCE.eClass();
    ServiceprocesstaskPackage.eINSTANCE.eClass();
    CalibrationvaluePackage.eINSTANCE.eClass();
    AxisPackage.eINSTANCE.eClass();
    autosar40.swcomponent.portinterface.instancerefs.InstancerefsPackage.eINSTANCE.eClass();
    FilterPackage.eINSTANCE.eClass();
    BuildactionmanifestPackage.eINSTANCE.eClass();
    ResourceconsumptionPackage.eINSTANCE.eClass();
    SwcbswmappingPackage.eINSTANCE.eClass();
    InternalbehaviorPackage.eINSTANCE.eClass();
    IncludeddatatypesPackage.eINSTANCE.eClass();
    PerinstancememoryPackage.eINSTANCE.eClass();
    PortapioptionsPackage.eINSTANCE.eClass();
    ServicemappingPackage.eINSTANCE.eClass();
    RunnableentityPackage.eINSTANCE.eClass();
    TriggerPackage.eINSTANCE.eClass();
    InstancerefsusagePackage.eINSTANCE.eClass();
    RptscenarioPackage.eINSTANCE.eClass();
    HwelementcategoryPackage.eINSTANCE.eClass();
    InstancerefPackage.eINSTANCE.eClass();
    autosar40.swcomponent.composition.instancerefs.InstancerefsPackage.eINSTANCE.eClass();
    BswbehaviorPackage.eINSTANCE.eClass();
    autosar40.commonstructure.measurementcalibrationsupport.instancerefs.InstancerefsPackage.eINSTANCE.eClass();
    FlatmapPackage.eINSTANCE.eClass();
    SystemPackage.eINSTANCE.eClass();
    ExecutiontimePackage.eINSTANCE.eClass();
    HeapusagePackage.eINSTANCE.eClass();
    MemorysectionusagePackage.eINSTANCE.eClass();
    StackusagePackage.eINSTANCE.eClass();
    autosar40.bswmodule.bswoverview.instancerefs.InstancerefsPackage.eINSTANCE.eClass();
    autosar40.diagnosticextract.servicemapping.ServicemappingPackage.eINSTANCE.eClass();
    autosar40.system.instancerefs.InstancerefsPackage.eINSTANCE.eClass();
    CalibrationparametervaluesPackage.eINSTANCE.eClass();
    FibexcorePackage.eINSTANCE.eClass();
    DatamappingPackage.eINSTANCE.eClass();
    EcuresourcemappingPackage.eINSTANCE.eClass();
    SwmappingPackage.eINSTANCE.eClass();
    PncmappingPackage.eINSTANCE.eClass();
    SignalpathsPackage.eINSTANCE.eClass();
    CoretopologyPackage.eINSTANCE.eClass();
    SwcimplementationPackage.eINSTANCE.eClass();
    CorecommunicationPackage.eINSTANCE.eClass();
    TtcancommunicationPackage.eINSTANCE.eClass();
    CancommunicationPackage.eINSTANCE.eClass();
    CantopologyPackage.eINSTANCE.eClass();
    EthernetcommunicationPackage.eINSTANCE.eClass();
    EthernettopologyPackage.eINSTANCE.eClass();
    TagwithoptionalvaluePackage.eINSTANCE.eClass();
    DiagnosticconnectionPackage.eINSTANCE.eClass();
    TtcantopologyPackage.eINSTANCE.eClass();
    FlexraycommunicationPackage.eINSTANCE.eClass();
    FlexraytopologyPackage.eINSTANCE.eClass();
    LincommunicationPackage.eINSTANCE.eClass();
    LintopologyPackage.eINSTANCE.eClass();
    Fibex4multiplatformPackage.eINSTANCE.eClass();
    CddsupportPackage.eINSTANCE.eClass();
    TransformerPackage.eINSTANCE.eClass();
    TransportprotocolsPackage.eINSTANCE.eClass();
    TimingPackage.eINSTANCE.eClass();
    DiagnosticcommonpropsPackage.eINSTANCE.eClass();
    DiagnosticcontributionPackage.eINSTANCE.eClass();
    GlobaltimePackage.eINSTANCE.eClass();
    NetworkmanagementPackage.eINSTANCE.eClass();
    EndtoendprotectionPackage.eINSTANCE.eClass();
    DiagnosticmappingPackage.eINSTANCE.eClass();
    CommondiagnosticsPackage.eINSTANCE.eClass();
    autosar40.diagnosticextract.instancerefs.InstancerefsPackage.eINSTANCE.eClass();
    CommonservicePackage.eINSTANCE.eClass();
    DiagnosticdebouncingalgorithmPackage.eINSTANCE.eClass();
    autosar40.system.endtoendprotection.EndtoendprotectionPackage.eINSTANCE.eClass();
    DiagnosticconditionPackage.eINSTANCE.eClass();
    DiagnosticeventPackage.eINSTANCE.eClass();
    DiagnosticconditiongroupPackage.eINSTANCE.eClass();
    DiagnosticoperationcyclePackage.eINSTANCE.eClass();
    DiagnostictroublecodePackage.eINSTANCE.eClass();
    DcmPackage.eINSTANCE.eClass();
    DiagnosticindicatorPackage.eINSTANCE.eClass();
    DiagnosticagingPackage.eINSTANCE.eClass();
    DiagnosticextendeddatarecordPackage.eINSTANCE.eClass();
    DiagnosticfreezeframePackage.eINSTANCE.eClass();
    CleardiagnosticinfoPackage.eINSTANCE.eClass();
    CommunicationcontrolPackage.eINSTANCE.eClass();
    ControldtcsettingPackage.eINSTANCE.eClass();
    DatabyidentifierPackage.eINSTANCE.eClass();
    DynamicallydefinedataidentifierPackage.eINSTANCE.eClass();
    EcuresetPackage.eINSTANCE.eClass();
    IocontrolPackage.eINSTANCE.eClass();
    MemorybyaddressPackage.eINSTANCE.eClass();
    ReaddatabyperiodicidPackage.eINSTANCE.eClass();
    ReaddtcinformationPackage.eINSTANCE.eClass();
    RequestfiletransferPackage.eINSTANCE.eClass();
    ResponseoneventPackage.eINSTANCE.eClass();
    RoutinecontrolPackage.eINSTANCE.eClass();
    SecurityaccessPackage.eINSTANCE.eClass();
    SessioncontrolPackage.eINSTANCE.eClass();

    // Create package meta-data objects
    theEcucValuesDslPackage.createPackageContents();

    // Initialize created meta-data
    theEcucValuesDslPackage.initializePackageContents();

    // Mark meta-data to indicate it can't be changed
    theEcucValuesDslPackage.freeze();

  
    // Update the registry and return the package
    EPackage.Registry.INSTANCE.put(EcucValuesDslPackage.eNS_URI, theEcucValuesDslPackage);
    return theEcucValuesDslPackage;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getModel()
  {
    return modelEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getModel_PackageName()
  {
    return (EAttribute)modelEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getModel_Modules()
  {
    return (EReference)modelEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getModule()
  {
    return moduleEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getModule_Definition()
  {
    return (EReference)moduleEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getModule_ShortName()
  {
    return (EAttribute)moduleEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getModule_Tags()
  {
    return (EReference)moduleEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getModule_Container()
  {
    return (EReference)moduleEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getContainedElement()
  {
    return containedElementEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getContainedElement_Index()
  {
    return (EAttribute)containedElementEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContainedElement_Tags()
  {
    return (EReference)containedElementEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getContainer()
  {
    return containerEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContainer_Definition()
  {
    return (EReference)containerEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getContainer_ShortName()
  {
    return (EAttribute)containerEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContainer_Elements()
  {
    return (EReference)containerEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getParameter()
  {
    return parameterEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getParameter_Definition()
  {
    return (EReference)parameterEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getParameter_Value()
  {
    return (EReference)parameterEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getReference()
  {
    return referenceEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getReference_Definition()
  {
    return (EReference)referenceEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getReference_Value()
  {
    return (EReference)referenceEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getInstanceReference()
  {
    return instanceReferenceEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getInstanceReference_Definition()
  {
    return (EReference)instanceReferenceEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getInstanceReference_Value()
  {
    return (EReference)instanceReferenceEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getReferenceValue()
  {
    return referenceValueEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getReferenceValue_Container()
  {
    return (EReference)referenceValueEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getInstanceReferenceValue()
  {
    return instanceReferenceValueEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getInstanceReferenceValue_Contexts()
  {
    return (EReference)instanceReferenceValueEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getInstanceReferenceValue_Target()
  {
    return (EReference)instanceReferenceValueEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getAbstractContext()
  {
    return abstractContextEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getSimpleValue()
  {
    return simpleValueEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getStringValue()
  {
    return stringValueEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getStringValue_Value()
  {
    return (EAttribute)stringValueEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getEnumValue()
  {
    return enumValueEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getEnumValue_Literal()
  {
    return (EAttribute)enumValueEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getBooleanValue()
  {
    return booleanValueEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getBooleanValue_Value()
  {
    return (EAttribute)booleanValueEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getNumericValue()
  {
    return numericValueEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getNumericValue_Value()
  {
    return (EAttribute)numericValueEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getTag()
  {
    return tagEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTag_Key()
  {
    return (EAttribute)tagEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTag_Value()
  {
    return (EAttribute)tagEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getContextChain()
  {
    return contextChainEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContextChain_Prev()
  {
    return (EReference)contextChainEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContextChain_Object()
  {
    return (EReference)contextChainEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getContext()
  {
    return contextEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContext_Start()
  {
    return (EReference)contextEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EEnum getBooleanLiteral()
  {
    return booleanLiteralEEnum;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EcucValuesDslFactory getEcucValuesDslFactory()
  {
    return (EcucValuesDslFactory)getEFactoryInstance();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isCreated = false;

  /**
   * Creates the meta-model objects for the package.  This method is
   * guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void createPackageContents()
  {
    if (isCreated) return;
    isCreated = true;

    // Create classes and their features
    modelEClass = createEClass(MODEL);
    createEAttribute(modelEClass, MODEL__PACKAGE_NAME);
    createEReference(modelEClass, MODEL__MODULES);

    moduleEClass = createEClass(MODULE);
    createEReference(moduleEClass, MODULE__DEFINITION);
    createEAttribute(moduleEClass, MODULE__SHORT_NAME);
    createEReference(moduleEClass, MODULE__TAGS);
    createEReference(moduleEClass, MODULE__CONTAINER);

    containedElementEClass = createEClass(CONTAINED_ELEMENT);
    createEAttribute(containedElementEClass, CONTAINED_ELEMENT__INDEX);
    createEReference(containedElementEClass, CONTAINED_ELEMENT__TAGS);

    containerEClass = createEClass(CONTAINER);
    createEReference(containerEClass, CONTAINER__DEFINITION);
    createEAttribute(containerEClass, CONTAINER__SHORT_NAME);
    createEReference(containerEClass, CONTAINER__ELEMENTS);

    parameterEClass = createEClass(PARAMETER);
    createEReference(parameterEClass, PARAMETER__DEFINITION);
    createEReference(parameterEClass, PARAMETER__VALUE);

    referenceEClass = createEClass(REFERENCE);
    createEReference(referenceEClass, REFERENCE__DEFINITION);
    createEReference(referenceEClass, REFERENCE__VALUE);

    instanceReferenceEClass = createEClass(INSTANCE_REFERENCE);
    createEReference(instanceReferenceEClass, INSTANCE_REFERENCE__DEFINITION);
    createEReference(instanceReferenceEClass, INSTANCE_REFERENCE__VALUE);

    referenceValueEClass = createEClass(REFERENCE_VALUE);
    createEReference(referenceValueEClass, REFERENCE_VALUE__CONTAINER);

    instanceReferenceValueEClass = createEClass(INSTANCE_REFERENCE_VALUE);
    createEReference(instanceReferenceValueEClass, INSTANCE_REFERENCE_VALUE__CONTEXTS);
    createEReference(instanceReferenceValueEClass, INSTANCE_REFERENCE_VALUE__TARGET);

    abstractContextEClass = createEClass(ABSTRACT_CONTEXT);

    simpleValueEClass = createEClass(SIMPLE_VALUE);

    stringValueEClass = createEClass(STRING_VALUE);
    createEAttribute(stringValueEClass, STRING_VALUE__VALUE);

    enumValueEClass = createEClass(ENUM_VALUE);
    createEAttribute(enumValueEClass, ENUM_VALUE__LITERAL);

    booleanValueEClass = createEClass(BOOLEAN_VALUE);
    createEAttribute(booleanValueEClass, BOOLEAN_VALUE__VALUE);

    numericValueEClass = createEClass(NUMERIC_VALUE);
    createEAttribute(numericValueEClass, NUMERIC_VALUE__VALUE);

    tagEClass = createEClass(TAG);
    createEAttribute(tagEClass, TAG__KEY);
    createEAttribute(tagEClass, TAG__VALUE);

    contextChainEClass = createEClass(CONTEXT_CHAIN);
    createEReference(contextChainEClass, CONTEXT_CHAIN__PREV);
    createEReference(contextChainEClass, CONTEXT_CHAIN__OBJECT);

    contextEClass = createEClass(CONTEXT);
    createEReference(contextEClass, CONTEXT__START);

    // Create enums
    booleanLiteralEEnum = createEEnum(BOOLEAN_LITERAL);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isInitialized = false;

  /**
   * Complete the initialization of the package and its meta-model.  This
   * method is guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void initializePackageContents()
  {
    if (isInitialized) return;
    isInitialized = true;

    // Initialize package
    setName(eNAME);
    setNsPrefix(eNS_PREFIX);
    setNsURI(eNS_URI);

    // Obtain other dependent packages
    EcucparameterdefPackage theEcucparameterdefPackage = (EcucparameterdefPackage)EPackage.Registry.INSTANCE.getEPackage(EcucparameterdefPackage.eNS_URI);

    // Create type parameters

    // Set bounds for type parameters

    // Add supertypes to classes
    containerEClass.getESuperTypes().add(this.getContainedElement());
    parameterEClass.getESuperTypes().add(this.getContainedElement());
    referenceEClass.getESuperTypes().add(this.getContainedElement());
    instanceReferenceEClass.getESuperTypes().add(this.getContainedElement());
    stringValueEClass.getESuperTypes().add(this.getSimpleValue());
    enumValueEClass.getESuperTypes().add(this.getSimpleValue());
    booleanValueEClass.getESuperTypes().add(this.getSimpleValue());
    numericValueEClass.getESuperTypes().add(this.getSimpleValue());
    contextChainEClass.getESuperTypes().add(this.getAbstractContext());
    contextEClass.getESuperTypes().add(this.getAbstractContext());

    // Initialize classes and features; add operations and parameters
    initEClass(modelEClass, Model.class, "Model", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getModel_PackageName(), ecorePackage.getEString(), "packageName", null, 0, 1, Model.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getModel_Modules(), this.getModule(), null, "modules", null, 0, -1, Model.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(moduleEClass, Module.class, "Module", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getModule_Definition(), theEcucparameterdefPackage.getEcucModuleDef(), null, "definition", null, 0, 1, Module.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getModule_ShortName(), ecorePackage.getEString(), "shortName", null, 0, 1, Module.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getModule_Tags(), this.getTag(), null, "tags", null, 0, -1, Module.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getModule_Container(), this.getContainer(), null, "container", null, 0, -1, Module.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(containedElementEClass, ContainedElement.class, "ContainedElement", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getContainedElement_Index(), ecorePackage.getEInt(), "index", null, 0, 1, ContainedElement.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getContainedElement_Tags(), this.getTag(), null, "tags", null, 0, -1, ContainedElement.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(containerEClass, org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container.class, "Container", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getContainer_Definition(), theEcucparameterdefPackage.getEcucContainerDef(), null, "definition", null, 0, 1, org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getContainer_ShortName(), ecorePackage.getEString(), "shortName", null, 0, 1, org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getContainer_Elements(), this.getContainedElement(), null, "elements", null, 0, -1, org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(parameterEClass, Parameter.class, "Parameter", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getParameter_Definition(), theEcucparameterdefPackage.getEcucParameterDef(), null, "definition", null, 0, 1, Parameter.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getParameter_Value(), this.getSimpleValue(), null, "value", null, 0, 1, Parameter.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(referenceEClass, Reference.class, "Reference", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getReference_Definition(), theEcucparameterdefPackage.getEcucAbstractReferenceDef(), null, "definition", null, 0, 1, Reference.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getReference_Value(), this.getReferenceValue(), null, "value", null, 0, 1, Reference.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(instanceReferenceEClass, InstanceReference.class, "InstanceReference", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getInstanceReference_Definition(), theEcucparameterdefPackage.getEcucAbstractReferenceDef(), null, "definition", null, 0, 1, InstanceReference.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getInstanceReference_Value(), this.getInstanceReferenceValue(), null, "value", null, 0, 1, InstanceReference.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(referenceValueEClass, ReferenceValue.class, "ReferenceValue", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getReferenceValue_Container(), ecorePackage.getEObject(), null, "container", null, 0, 1, ReferenceValue.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(instanceReferenceValueEClass, InstanceReferenceValue.class, "InstanceReferenceValue", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getInstanceReferenceValue_Contexts(), this.getAbstractContext(), null, "contexts", null, 0, 1, InstanceReferenceValue.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getInstanceReferenceValue_Target(), ecorePackage.getEObject(), null, "target", null, 0, 1, InstanceReferenceValue.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(abstractContextEClass, AbstractContext.class, "AbstractContext", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

    initEClass(simpleValueEClass, SimpleValue.class, "SimpleValue", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

    initEClass(stringValueEClass, StringValue.class, "StringValue", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getStringValue_Value(), ecorePackage.getEString(), "value", null, 0, 1, StringValue.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(enumValueEClass, EnumValue.class, "EnumValue", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getEnumValue_Literal(), ecorePackage.getEString(), "literal", null, 0, 1, EnumValue.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(booleanValueEClass, BooleanValue.class, "BooleanValue", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getBooleanValue_Value(), this.getBooleanLiteral(), "value", null, 0, 1, BooleanValue.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(numericValueEClass, NumericValue.class, "NumericValue", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getNumericValue_Value(), ecorePackage.getEString(), "value", null, 0, 1, NumericValue.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(tagEClass, Tag.class, "Tag", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getTag_Key(), ecorePackage.getEString(), "key", null, 0, 1, Tag.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTag_Value(), ecorePackage.getEString(), "value", null, 0, 1, Tag.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(contextChainEClass, ContextChain.class, "ContextChain", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getContextChain_Prev(), this.getAbstractContext(), null, "prev", null, 0, 1, ContextChain.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getContextChain_Object(), ecorePackage.getEObject(), null, "object", null, 0, 1, ContextChain.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(contextEClass, Context.class, "Context", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getContext_Start(), ecorePackage.getEObject(), null, "start", null, 0, 1, Context.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    // Initialize enums and add enum literals
    initEEnum(booleanLiteralEEnum, BooleanLiteral.class, "BooleanLiteral");
    addEEnumLiteral(booleanLiteralEEnum, BooleanLiteral.TRUE);
    addEEnumLiteral(booleanLiteralEEnum, BooleanLiteral.FALSE);

    // Create resource
    createResource(eNS_URI);
  }

} //EcucValuesDslPackageImpl
