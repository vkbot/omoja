.class final enum Lorg/apache/poi/ss/util/DateParser$Format;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/DateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/util/DateParser$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/util/DateParser$Format;

.field public static final enum DMY_DASHES:Lorg/apache/poi/ss/util/DateParser$Format;

.field public static final enum MDY_SLASHES:Lorg/apache/poi/ss/util/DateParser$Format;

.field public static final enum MD_DASHES:Lorg/apache/poi/ss/util/DateParser$Format;

.field public static final enum MD_SLASHES:Lorg/apache/poi/ss/util/DateParser$Format;

.field public static final enum YMD_DASHES:Lorg/apache/poi/ss/util/DateParser$Format;

.field public static final enum YMD_SLASHES:Lorg/apache/poi/ss/util/DateParser$Format;


# instance fields
.field private dayIndex:I

.field private hasYear:Z

.field private monthIndex:I

.field private pattern:Ljava/util/regex/Pattern;

.field private yearIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/poi/ss/util/DateParser$Format;

    const-string v1, "YMD_DASHES"

    const/4 v2, 0x0

    const-string v3, "^(\\d{4})-(\\w+)-(\\d{1,2})( .*)?$"

    const-string v4, "ymd"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/DateParser$Format;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/util/DateParser$Format;->YMD_DASHES:Lorg/apache/poi/ss/util/DateParser$Format;

    new-instance v1, Lorg/apache/poi/ss/util/DateParser$Format;

    const-string v2, "^(\\d{1,2})-(\\w+)-(\\d{4})( .*)?$"

    const-string v3, "dmy"

    const-string v5, "DMY_DASHES"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lorg/apache/poi/ss/util/DateParser$Format;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/util/DateParser$Format;->DMY_DASHES:Lorg/apache/poi/ss/util/DateParser$Format;

    new-instance v2, Lorg/apache/poi/ss/util/DateParser$Format;

    const-string v3, "MD_DASHES"

    const/4 v5, 0x2

    const-string v6, "^(\\w+)-(\\d{1,2})( .*)?$"

    const-string v7, "md"

    invoke-direct {v2, v3, v5, v6, v7}, Lorg/apache/poi/ss/util/DateParser$Format;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/apache/poi/ss/util/DateParser$Format;->MD_DASHES:Lorg/apache/poi/ss/util/DateParser$Format;

    new-instance v3, Lorg/apache/poi/ss/util/DateParser$Format;

    const-string v5, "^(\\w+)/(\\d{1,2})/(\\d{4})( .*)?$"

    const-string v6, "mdy"

    const-string v8, "MDY_SLASHES"

    const/4 v9, 0x3

    invoke-direct {v3, v8, v9, v5, v6}, Lorg/apache/poi/ss/util/DateParser$Format;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/poi/ss/util/DateParser$Format;->MDY_SLASHES:Lorg/apache/poi/ss/util/DateParser$Format;

    new-instance v5, Lorg/apache/poi/ss/util/DateParser$Format;

    const/4 v6, 0x4

    const-string v8, "^(\\d{4})/(\\w+)/(\\d{1,2})( .*)?$"

    const-string v9, "YMD_SLASHES"

    invoke-direct {v5, v9, v6, v8, v4}, Lorg/apache/poi/ss/util/DateParser$Format;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/apache/poi/ss/util/DateParser$Format;->YMD_SLASHES:Lorg/apache/poi/ss/util/DateParser$Format;

    new-instance v6, Lorg/apache/poi/ss/util/DateParser$Format;

    const/4 v4, 0x5

    const-string v8, "^(\\w+)/(\\d{1,2})( .*)?$"

    const-string v9, "MD_SLASHES"

    invoke-direct {v6, v9, v4, v8, v7}, Lorg/apache/poi/ss/util/DateParser$Format;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/apache/poi/ss/util/DateParser$Format;->MD_SLASHES:Lorg/apache/poi/ss/util/DateParser$Format;

    move-object v4, v5

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/ss/util/DateParser$Format;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/DateParser$Format;->$VALUES:[Lorg/apache/poi/ss/util/DateParser$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/util/DateParser$Format;->pattern:Ljava/util/regex/Pattern;

    const-string p1, "y"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apache/poi/ss/util/DateParser$Format;->hasYear:Z

    if-eqz p2, :cond_0

    invoke-virtual {p4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/util/DateParser$Format;->yearIndex:I

    :cond_0
    const-string p1, "m"

    invoke-virtual {p4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/util/DateParser$Format;->monthIndex:I

    const-string p1, "d"

    invoke-virtual {p4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/util/DateParser$Format;->dayIndex:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ss/util/DateParser$Format;)Ljava/util/regex/Pattern;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/util/DateParser$Format;->pattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/ss/util/DateParser$Format;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/util/DateParser$Format;->hasYear:Z

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/ss/util/DateParser$Format;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/util/DateParser$Format;->yearIndex:I

    return p0
.end method

.method public static synthetic access$300(Lorg/apache/poi/ss/util/DateParser$Format;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/util/DateParser$Format;->monthIndex:I

    return p0
.end method

.method public static synthetic access$400(Lorg/apache/poi/ss/util/DateParser$Format;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/util/DateParser$Format;->dayIndex:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/DateParser$Format;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/util/DateParser$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/util/DateParser$Format;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/util/DateParser$Format;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/util/DateParser$Format;->$VALUES:[Lorg/apache/poi/ss/util/DateParser$Format;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/util/DateParser$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/util/DateParser$Format;

    return-object v0
.end method
