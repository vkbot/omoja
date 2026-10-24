.class public interface abstract Lorg/apache/poi/ss/formula/IStabilityClassifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TOTALLY_IMMUTABLE:Lorg/apache/poi/ss/formula/IStabilityClassifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/e;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/IStabilityClassifier;->TOTALLY_IMMUTABLE:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    return-void
.end method

.method public static synthetic a(III)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/IStabilityClassifier;->lambda$static$0(III)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(III)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract isCellFinal(III)Z
.end method
