.class public final Lp/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/s$a;
    }
.end annotation


# instance fields
.field public final a:Lp/u;

.field public final b:Lp/s$a;


# direct methods
.method public constructor <init>(Lg0/a$c;)V
    .locals 1
    .param p1    # Lg0/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lp/u;

    invoke-direct {v0, p1}, Lp/u;-><init>(Lg0/a$c;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lp/s$a;

    invoke-direct {p1}, Lp/s$a;-><init>()V

    iput-object p1, p0, Lp/s;->b:Lp/s$a;

    iput-object v0, p0, Lp/s;->a:Lp/u;

    return-void
.end method
