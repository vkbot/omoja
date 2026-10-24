.class public final Lp/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/f$b;,
        Lp/f$e;,
        Lp/f$a;,
        Lp/f$c;,
        Lp/f$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp/q<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lp/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/f$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/f$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/f;->a:Lp/f$d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

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

    check-cast p1, Ljava/io/File;

    new-instance p2, Lp/q$a;

    new-instance p3, Le0/b;

    invoke-direct {p3, p1}, Le0/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lp/f$c;

    iget-object p0, p0, Lp/f;->a:Lp/f$d;

    invoke-direct {p4, p1, p0}, Lp/f$c;-><init>(Ljava/io/File;Lp/f$d;)V

    invoke-direct {p2, p3, p4}, Lp/q$a;-><init>(Li/f;Lj/d;)V

    return-object p2
.end method
