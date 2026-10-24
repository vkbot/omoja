.class public final Lorg/apache/logging/log4j/core/pattern/NotANumber;
.super Ljava/lang/Object;
.source "NotANumber.java"


# static fields
.field public static final NAN:Lorg/apache/logging/log4j/core/pattern/NotANumber;

.field public static final VALUE:Ljava/lang/String; = "\u0000"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/NotANumber;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/NotANumber;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/NotANumber;->NAN:Lorg/apache/logging/log4j/core/pattern/NotANumber;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "\u0000"

    return-object v0
.end method
