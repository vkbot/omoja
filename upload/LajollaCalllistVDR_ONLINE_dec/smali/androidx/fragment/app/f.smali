.class public final Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/h1;

.field public final synthetic c:Landroidx/fragment/app/h1;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h1;Landroidx/fragment/app/h1;ZLj/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/h1;

    iput-object p2, p0, Landroidx/fragment/app/f;->c:Landroidx/fragment/app/h1;

    iput-boolean p3, p0, Landroidx/fragment/app/f;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/h1;

    iget-object v0, v0, Landroidx/fragment/app/h1;->c:Landroidx/fragment/app/t;

    iget-object v1, p0, Landroidx/fragment/app/f;->c:Landroidx/fragment/app/h1;

    iget-object v1, v1, Landroidx/fragment/app/h1;->c:Landroidx/fragment/app/t;

    iget-boolean v2, p0, Landroidx/fragment/app/f;->d:Z

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/v0;->a(Landroidx/fragment/app/t;Landroidx/fragment/app/t;Z)V

    return-void
.end method
