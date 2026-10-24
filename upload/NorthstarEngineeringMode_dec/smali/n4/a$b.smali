.class public final Ln4/a$b;
.super Ln4/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/a$a<",
        "Ln4/a$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln4/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final k()Ln4/a;
    .locals 4

    new-instance v0, Ln4/a;

    invoke-virtual {p0}, Lj4/b;->i()Lj4/a;

    move-result-object v1

    iget-object v2, p0, Lj4/d;->c1:[Ljava/nio/file/OpenOption;

    invoke-virtual {v1, v2}, Lj4/a;->j([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    iget-wide v2, p0, Ln4/a$a;->f1:J

    iget-boolean p0, p0, Ln4/a$a;->g1:Z

    invoke-direct {v0, v1, v2, v3, p0}, Ln4/a;-><init>(Ljava/io/InputStream;JZ)V

    return-object v0
.end method
