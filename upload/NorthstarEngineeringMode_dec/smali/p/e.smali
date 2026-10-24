.class public final Lp/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/e$c;,
        Lp/e$b;,
        Lp/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp/q<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lp/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/e$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp/e$c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/e;->a:Lp/e$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data:image"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/Object;IILi/h;)Lp/q$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Li/h;",
            ")",
            "Lp/q$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lp/q$a;

    new-instance p3, Le0/b;

    invoke-direct {p3, p1}, Le0/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lp/e$b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lp/e;->a:Lp/e$a;

    invoke-direct {p4, p1, p0}, Lp/e$b;-><init>(Ljava/lang/String;Lp/e$a;)V

    invoke-direct {p2, p3, p4}, Lp/q$a;-><init>(Li/f;Lj/d;)V

    return-object p2
.end method
