.class public final Lx/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field public static final a:Lx/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx/g;->a:Lx/g;

    return-void
.end method


# virtual methods
.method public final a(Ll/x;Li/h;)Ll/x;
    .locals 0
    .param p1    # Ll/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/x<",
            "TZ;>;",
            "Li/h;",
            ")",
            "Ll/x<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
