.class public final Lorg/apache/poi/hssf/record/common/FeatProtection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/SharedFeature;


# static fields
.field public static final HAS_SELF_RELATIVE_SECURITY_FEATURE:J = 0x1L

.field public static final NO_SELF_RELATIVE_SECURITY_FEATURE:J


# instance fields
.field private fSD:I

.field private passwordVerifier:I

.field private securityDescriptor:[B

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->securityDescriptor:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->fSD:I

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->passwordVerifier:I

    .line 10
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->title:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->securityDescriptor:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/common/FeatProtection;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/common/FeatProtection;->fSD:I

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->fSD:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/common/FeatProtection;->passwordVerifier:I

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->passwordVerifier:I

    .line 5
    iget-object v0, p1, Lorg/apache/poi/hssf/record/common/FeatProtection;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->title:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/common/FeatProtection;->securityDescriptor:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->securityDescriptor:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/common/FeatProtection;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/FeatProtection;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->securityDescriptor:[B

    return-object p0
.end method


# virtual methods
.method public copy()Lorg/apache/poi/hssf/record/common/FeatProtection;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/common/FeatProtection;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/common/FeatProtection;-><init>(Lorg/apache/poi/hssf/record/common/FeatProtection;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/common/SharedFeature;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FeatProtection;->copy()Lorg/apache/poi/hssf/record/common/FeatProtection;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->securityDescriptor:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getFSD()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->fSD:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "FSD"

    new-instance v1, Lorg/apache/poi/hssf/record/common/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/common/f;-><init>(Lorg/apache/poi/hssf/record/common/FeatProtection;I)V

    const-string/jumbo v2, "passwordVerifier"

    new-instance v3, Lorg/apache/poi/hssf/record/chart/f1;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/hssf/record/chart/f1;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v5, "title"

    new-instance v6, Lorg/apache/poi/ddf/b;

    const/16 v7, 0x11

    invoke-direct {v6, v7, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v7, "securityDescriptor"

    new-instance v8, Lorg/apache/poi/hssf/record/common/f;

    invoke-direct {v8, p0, v4}, Lorg/apache/poi/hssf/record/common/f;-><init>(Lorg/apache/poi/hssf/record/common/FeatProtection;I)V

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPasswordVerifier()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->passwordVerifier:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->title:Ljava/lang/String;

    return-object p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->fSD:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->passwordVerifier:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->securityDescriptor:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public setPasswordVerifier(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->passwordVerifier:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/FeatProtection;->title:Ljava/lang/String;

    return-void
.end method
