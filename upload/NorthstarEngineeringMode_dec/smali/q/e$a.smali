.class public abstract Lq/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp/r<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/e$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lq/e$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lp/u;)Lp/q;
    .locals 4
    .param p1    # Lp/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/u;",
            ")",
            "Lp/q<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    new-instance v0, Lq/e;

    const-class v1, Ljava/io/File;

    iget-object v2, p0, Lq/e$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Lp/u;->b(Ljava/lang/Class;Ljava/lang/Class;)Lp/q;

    move-result-object v1

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Lp/u;->b(Ljava/lang/Class;Ljava/lang/Class;)Lp/q;

    move-result-object p1

    iget-object p0, p0, Lq/e$a;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, v2}, Lq/e;-><init>(Landroid/content/Context;Lp/q;Lp/q;Ljava/lang/Class;)V

    return-object v0
.end method
