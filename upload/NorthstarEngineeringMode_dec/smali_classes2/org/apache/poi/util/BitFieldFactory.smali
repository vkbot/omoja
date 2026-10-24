.class public Lorg/apache/poi/util/BitFieldFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/util/BitField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/util/BitFieldFactory;->instances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILjava/lang/Integer;)Lorg/apache/poi/util/BitField;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/util/BitFieldFactory;->lambda$getInstance$0(ILjava/lang/Integer;)Lorg/apache/poi/util/BitField;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(I)Lorg/apache/poi/util/BitField;
    .locals 4

    sget-object v0, Lorg/apache/poi/util/BitFieldFactory;->instances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/util/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/poi/util/a;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/util/BitField;

    return-object p0
.end method

.method private static synthetic lambda$getInstance$0(ILjava/lang/Integer;)Lorg/apache/poi/util/BitField;
    .locals 0

    new-instance p1, Lorg/apache/poi/util/BitField;

    invoke-direct {p1, p0}, Lorg/apache/poi/util/BitField;-><init>(I)V

    return-object p1
.end method
