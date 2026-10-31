.class public Lorg/apache/commons/io/output/CloseShieldWriter;
.super Lorg/apache/commons/io/output/ProxyWriter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static wrap(Ljava/io/Writer;)Lorg/apache/commons/io/output/CloseShieldWriter;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/CloseShieldWriter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/CloseShieldWriter;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/output/ClosedWriter;->INSTANCE:Lorg/apache/commons/io/output/ClosedWriter;

    .line 2
    .line 3
    iput-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    .line 4
    .line 5
    return-void
.end method
