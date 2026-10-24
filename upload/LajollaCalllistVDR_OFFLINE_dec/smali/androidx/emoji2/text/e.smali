.class public abstract Landroidx/emoji2/text/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/emoji2/text/h;

.field public b:I

.field public final c:Landroidx/emoji2/text/p;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/e;->b:I

    new-instance v0, Landroidx/emoji2/text/p;

    invoke-direct {v0}, Landroidx/emoji2/text/p;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/e;->c:Landroidx/emoji2/text/p;

    iput-object p1, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/h;

    return-void
.end method
