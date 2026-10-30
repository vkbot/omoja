.class public Lorg/apache/commons/io/input/CloseShieldReader;
.super Lorg/apache/commons/io/input/ProxyReader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;-><init>(Ljava/io/Reader;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static wrap(Ljava/io/Reader;)Lorg/apache/commons/io/input/CloseShieldReader;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/CloseShieldReader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/CloseShieldReader;-><init>(Ljava/io/Reader;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/input/ClosedReader;->INSTANCE:Lorg/apache/commons/io/input/ClosedReader;

    .line 2
    .line 3
    iput-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    .line 4
    .line 5
    return-void
.end method
