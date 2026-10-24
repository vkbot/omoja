.class public final Lq/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/q;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/e$a;,
        Lq/e$b;,
        Lq/e$c;,
        Lq/e$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp/q<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/q<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final c:Lp/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/q<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp/q;Lp/q;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lp/q<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lp/q<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lq/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lq/e;->b:Lp/q;

    iput-object p3, p0, Lq/e;->c:Lp/q;

    iput-object p4, p0, Lq/e;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Ld/f;->P(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/Object;IILi/h;)Lp/q$a;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    new-instance p1, Lp/q$a;

    new-instance v9, Le0/b;

    invoke-direct {v9, v4}, Le0/b;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lq/e$d;

    iget-object v1, p0, Lq/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lq/e;->b:Lp/q;

    iget-object v3, p0, Lq/e;->c:Lp/q;

    iget-object v8, p0, Lq/e;->d:Ljava/lang/Class;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lq/e$d;-><init>(Landroid/content/Context;Lp/q;Lp/q;Landroid/net/Uri;IILi/h;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, Lp/q$a;-><init>(Li/f;Lj/d;)V

    return-object p1
.end method
