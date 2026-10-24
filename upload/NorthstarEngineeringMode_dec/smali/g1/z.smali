.class public final synthetic Lg1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/a$a;
.implements Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;
.implements Lm4/a;
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;
.implements Lg5/a0;
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;
.implements Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;
.implements Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;
.implements Lm5/g1$j;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg1/z;->c:I

    iput-object p2, p0, Lg1/z;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lg1/z;->c:I

    iget-object p0, p0, Lg1/z;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lm5/g1$m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lm5/g1$m;->G()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lm5/g1;->v()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lm5/g1$m;->G()I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const/4 p0, -0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lm5/g1$m;->A:[C

    iget v2, p0, Lm5/g1$m;->z:I

    aget-char v3, v0, v2

    add-int/2addr v2, v1

    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lm5/g1$m;->z:I

    iget v0, p0, Lm5/g1$m;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lm5/g1$m;->x:I

    move p0, v3

    :goto_2
    return p0

    :pswitch_0
    check-cast p0, Lm5/g1$e;

    sget v0, Lm5/g1$e;->b1:I

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lm5/g1$e;->a(I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lg1/z;->r:Ljava/lang/Object;

    check-cast p0, Lorg/apache/commons/io/output/g;

    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lg1/z;->r:Ljava/lang/Object;

    check-cast p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;

    sget v0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->l:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/SystemRebootActivity;->n()V

    return-void
.end method

.method public final configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 1

    iget v0, p0, Lg1/z;->c:I

    iget-object p0, p0, Lg1/z;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->c(Lorg/apache/poi/ss/util/AreaReference;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/apache/poi/ss/usermodel/Table;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->d(Lorg/apache/poi/ss/usermodel/Table;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public final drawableProvider(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lg1/z;->r:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration;->b(Landroid/graphics/drawable/Drawable;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg1/z;->c:I

    iget-object p0, p0, Lg1/z;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->d(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lc5/e;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->a(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lc5/e;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 0

    iget-object p0, p0, Lg1/z;->r:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->a(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V

    return-void
.end method

.method public final visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 0

    iget-object p0, p0, Lg1/z;->r:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final writeSheetData(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lg1/z;->r:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->b(Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;Ljava/io/OutputStream;)V

    return-void
.end method
