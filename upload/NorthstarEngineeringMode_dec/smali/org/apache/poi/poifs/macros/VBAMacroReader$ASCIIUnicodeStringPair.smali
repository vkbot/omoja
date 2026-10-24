.class Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/macros/VBAMacroReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASCIIUnicodeStringPair"
.end annotation


# instance fields
.field private final ascii:Ljava/lang/String;

.field private final pushbackRecordId:I

.field private final unicode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->ascii:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->unicode:Ljava/lang/String;

    iput p2, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->pushbackRecordId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->ascii:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->unicode:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->pushbackRecordId:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->getAscii()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->getPushbackRecordId()I

    move-result p0

    return p0
.end method

.method private getAscii()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->ascii:Ljava/lang/String;

    return-object p0
.end method

.method private getPushbackRecordId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->pushbackRecordId:I

    return p0
.end method

.method private getUnicode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->unicode:Ljava/lang/String;

    return-object p0
.end method
