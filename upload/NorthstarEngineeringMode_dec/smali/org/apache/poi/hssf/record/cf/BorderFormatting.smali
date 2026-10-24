.class public final Lorg/apache/poi/hssf/record/cf/BorderFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field public static final BORDER_DASHED:S = 0x3s

.field public static final BORDER_DASH_DOT:S = 0x9s

.field public static final BORDER_DASH_DOT_DOT:S = 0xbs

.field public static final BORDER_DOTTED:S = 0x7s

.field public static final BORDER_DOUBLE:S = 0x6s

.field public static final BORDER_HAIR:S = 0x4s

.field public static final BORDER_MEDIUM:S = 0x2s

.field public static final BORDER_MEDIUM_DASHED:S = 0x8s

.field public static final BORDER_MEDIUM_DASH_DOT:S = 0xas

.field public static final BORDER_MEDIUM_DASH_DOT_DOT:S = 0xcs

.field public static final BORDER_NONE:S = 0x0s

.field public static final BORDER_SLANTED_DASH_DOT:S = 0xds

.field public static final BORDER_THICK:S = 0x5s

.field public static final BORDER_THIN:S = 0x1s

.field private static final bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

.field private static final bordBottomLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordBottomLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordDiagLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordDiagLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordLeftLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordLeftLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordRightLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordRightLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

.field private static final bordTopLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordTopLineStyle:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_13_border_styles1:I

.field private field_14_border_styles2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineStyle:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf0

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineStyle:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineStyle:Lorg/apache/poi/util/BitField;

    const v0, 0xf000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineStyle:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x7f0000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineColor:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineColor:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

    const/high16 v0, -0x80000000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x7f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineColor:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x3f80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineColor:Lorg/apache/poi/util/BitField;

    const v0, 0x1fc000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineColor:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x1e00000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineStyle:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 4
    iget p1, p1, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->copy()Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;)V

    return-object v0
.end method

.method public getBorderBottom()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineStyle:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getBorderDiagonal()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineStyle:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getBorderLeft()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineStyle:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getBorderRight()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineStyle:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getBorderTop()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineStyle:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getBottomBorderColor()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineColor:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getDataLength()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getDiagonalBorderColor()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineColor:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lh5/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh5/a;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string v3, "borderLeft"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh5/b;

    invoke-direct {v1, p0, v2}, Lh5/b;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string v3, "borderRight"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh5/c;

    invoke-direct {v1, p0, v2}, Lh5/c;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string v2, "borderTop"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh5/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lh5/a;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string v3, "borderBottom"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh5/b;

    invoke-direct {v1, p0, v2}, Lh5/b;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string v3, "leftBorderColor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh5/c;

    invoke-direct {v1, p0, v2}, Lh5/c;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string/jumbo v2, "rightBorderColor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh5/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lh5/a;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string/jumbo v3, "topBorderColor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh5/b;

    invoke-direct {v1, p0, v2}, Lh5/b;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string v3, "bottomBorderColor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh5/c;

    invoke-direct {v1, p0, v2}, Lh5/c;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string v2, "forwardDiagonalOn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh5/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lh5/a;-><init>(Lorg/apache/poi/hssf/record/cf/BorderFormatting;I)V

    const-string p0, "backwardDiagonalOn"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLeftBorderColor()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineColor:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getRightBorderColor()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineColor:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getTopBorderColor()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineColor:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public isBackwardDiagonalOn()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isForwardDiagonalOn()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(I[B)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 1
    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p1, p1, 0x4

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    .line 2
    invoke-static {p2, p1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/16 p0, 0x8

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 3
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    .line 4
    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setBackwardDiagonalOn(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBorderBottom(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBorderDiagonal(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public setBorderLeft(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBorderRight(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBorderTop(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBottomBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public setDiagonalBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public setForwardDiagonalOn(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setLeftBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setRightBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setTopBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
