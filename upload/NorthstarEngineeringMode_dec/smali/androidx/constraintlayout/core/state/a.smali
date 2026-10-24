.class public final synthetic Landroidx/constraintlayout/core/state/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lorg/apache/poi/sl/usermodel/FillStyle;
.implements Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;
.implements Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureLine$AddPictureData;


# instance fields
.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSignatureLine;->a(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/ss/usermodel/Name;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->a(Lorg/apache/poi/ss/usermodel/Name;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    return-void
.end method

.method public final fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->s(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/Transition;->f(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public final getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;

    sget p1, Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;->g:I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;->f:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceManager;->showDialog(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method
