.class public final Lj/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj/e$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lm/b;


# direct methods
.method public constructor <init>(Lm/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/k$a;->a:Lm/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Lj/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Lj/k;

    iget-object p0, p0, Lj/k$a;->a:Lm/b;

    invoke-direct {v0, p1, p0}, Lj/k;-><init>(Ljava/io/InputStream;Lm/b;)V

    return-object v0
.end method
