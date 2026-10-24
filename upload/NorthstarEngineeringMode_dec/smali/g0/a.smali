.class public final Lg0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/a$c;,
        Lg0/a$d;,
        Lg0/a$e;,
        Lg0/a$b;
    }
.end annotation


# static fields
.field public static final a:Lg0/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg0/a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg0/a;->a:Lg0/a$a;

    return-void
.end method

.method public static a(ILg0/a$b;)Lg0/a$c;
    .locals 2
    .param p1    # Lg0/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sget-object p0, Lg0/a;->a:Lg0/a$a;

    new-instance v1, Lg0/a$c;

    invoke-direct {v1, v0, p1, p0}, Lg0/a$c;-><init>(Landroidx/core/util/Pools$SynchronizedPool;Lg0/a$b;Lg0/a$e;)V

    return-object v1
.end method
