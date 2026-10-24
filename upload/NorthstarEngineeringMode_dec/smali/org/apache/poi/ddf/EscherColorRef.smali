.class public Lorg/apache/poi/ddf/EscherColorRef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;,
        Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FLAG_BLUE:Lorg/apache/poi/util/BitField;

.field private static final FLAG_GREEN:Lorg/apache/poi/util/BitField;

.field private static final FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

.field private static final FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

.field private static final FLAG_RED:Lorg/apache/poi/util/BitField;

.field private static final FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

.field private static final FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

.field private static final FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;


# instance fields
.field private colorRef:I

.field private opid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x10000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x8000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x4000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x2000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x1000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0xff0000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_BLUE:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const v1, 0xff00

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherColorRef;->opid:I

    iput p1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherColorRef;->opid:I

    const/4 v0, 0x6

    if-ne p3, v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherColorRef;->opid:I

    add-int/lit8 p2, p2, 0x2

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    return-void
.end method

.method private getIndex()I
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    sget-object v1, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v1, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getPaletteIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasPaletteIndexFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherColorRef;->getIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getRGB()[I
    .locals 3

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    sget-object v1, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_BLUE:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v2, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    filled-new-array {v0, v1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getSchemeIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSchemeIndexFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getSysIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherColorRef;->getIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSysIndexInvert()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->access$100(Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;)Lorg/apache/poi/util/BitField;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->access$100(Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;)Lorg/apache/poi/util/BitField;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v1
.end method

.method public getSysIndexProcedure()Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    sget-object v5, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    if-eq v4, v5, :cond_2

    sget-object v5, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->access$100(Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;)Lorg/apache/poi/util/BitField;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getSysIndexSource()Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->access$000(Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;)I

    move-result v5

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public hasPaletteIndexFlag()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public hasPaletteRGBFlag()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public hasSchemeIndexFlag()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public hasSysIndexFlag()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public hasSystemRGBFlag()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public setPaletteIndexFlag(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    return-void
.end method

.method public setPaletteRGBFlag(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    return-void
.end method

.method public setSchemeIndexFlag(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    return-void
.end method

.method public setSysIndexFlag(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    return-void
.end method

.method public setSystemRGBFlag(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    return-void
.end method
