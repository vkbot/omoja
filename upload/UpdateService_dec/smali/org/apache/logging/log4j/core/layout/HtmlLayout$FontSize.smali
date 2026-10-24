.class public final enum Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
.super Ljava/lang/Enum;
.source "HtmlLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/HtmlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

.field public static final enum LARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

.field public static final enum LARGER:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

.field public static final enum MEDIUM:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

.field public static final enum SMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

.field public static final enum SMALLER:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

.field public static final enum XLARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

.field public static final enum XSMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

.field public static final enum XXLARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

.field public static final enum XXSMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;


# instance fields
.field private final size:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 78
    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    const-string v1, "SMALLER"

    const/4 v2, 0x0

    const-string v3, "smaller"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->SMALLER:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    const-string v1, "XXSMALL"

    const/4 v3, 0x1

    const-string v4, "xx-small"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->XXSMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    const-string v1, "XSMALL"

    const/4 v4, 0x2

    const-string v5, "x-small"

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->XSMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    const-string v1, "SMALL"

    const/4 v5, 0x3

    const-string v6, "small"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->SMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    const-string v1, "MEDIUM"

    const/4 v6, 0x4

    const-string v7, "medium"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->MEDIUM:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    const-string v1, "LARGE"

    const/4 v7, 0x5

    const-string v8, "large"

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->LARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    .line 79
    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    const-string v1, "XLARGE"

    const/4 v8, 0x6

    const-string v9, "x-large"

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->XLARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    const-string v1, "XXLARGE"

    const/4 v9, 0x7

    const-string v10, "xx-large"

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->XXLARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    const-string v1, "LARGER"

    const/16 v10, 0x8

    const-string v11, "larger"

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->LARGER:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    .line 77
    const/16 v1, 0x9

    new-array v1, v1, [Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    sget-object v11, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->SMALLER:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    aput-object v11, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->XXSMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->XSMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->SMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->MEDIUM:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->LARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->XLARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->XXLARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->$VALUES:[Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "size"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-object p3, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->size:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static getFontSize(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    .locals 5
    .param p0, "size"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .line 92
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->values()[Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 93
    .local v3, "fontSize":Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    iget-object v4, v3, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->size:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    return-object v3

    .line 92
    .end local v3    # "fontSize":Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->SMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 77
    const-class v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    .locals 1

    .line 77
    sget-object v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->$VALUES:[Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    return-object v0
.end method


# virtual methods
.method public getFontSize()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->size:Ljava/lang/String;

    return-object v0
.end method

.method public larger()Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->ordinal()I

    move-result v0

    sget-object v1, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->XXLARGE:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->values()[Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
