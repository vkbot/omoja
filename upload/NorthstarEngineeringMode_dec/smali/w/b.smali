.class public final Lw/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/a$a;


# instance fields
.field public final a:Lm/d;

.field public final b:Lm/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/d;Lm/b;)V
    .locals 0
    .param p2    # Lm/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/b;->a:Lm/d;

    iput-object p2, p0, Lw/b;->b:Lm/b;

    return-void
.end method
