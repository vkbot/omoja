.class public final Ln4/b;
.super Ln4/e;
.source "SourceFile"


# direct methods
.method public static d(Ljava/io/InputStream;)Ln4/b;
    .locals 1

    new-instance v0, Ln4/b;

    invoke-direct {v0, p0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    sget-object v0, Ln4/c;->c:Ln4/c;

    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    return-void
.end method
