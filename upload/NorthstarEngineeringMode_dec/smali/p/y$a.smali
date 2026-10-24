.class public final Lp/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp/r<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lp/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/y$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/y$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp/y$a;->a:Lp/y$a;

    return-void
.end method


# virtual methods
.method public final a(Lp/u;)Lp/q;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/u;",
            ")",
            "Lp/q<",
            "TModel;TModel;>;"
        }
    .end annotation

    sget-object p0, Lp/y;->a:Lp/y;

    return-object p0
.end method
