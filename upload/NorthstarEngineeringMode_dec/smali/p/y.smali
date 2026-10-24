.class public final Lp/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/y$a;,
        Lp/y$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp/q<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lp/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/y<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp/y;->a:Lp/y;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Li/h;",
            ")",
            "Lp/q$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p0, Lp/q$a;

    new-instance p2, Le0/b;

    invoke-direct {p2, p1}, Le0/b;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lp/y$b;

    invoke-direct {p3, p1}, Lp/y$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lp/q$a;-><init>(Li/f;Lj/d;)V

    return-object p0
.end method
