.class public final Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/g1;

.field public final synthetic b:Landroidx/fragment/app/g1;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/g1;Landroidx/fragment/app/g1;ZLk/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/g1;

    iput-object p2, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/g1;

    iput-boolean p3, p0, Landroidx/fragment/app/f;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/g1;

    iget-object v0, v0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    iget-object v1, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/g1;

    iget-object v1, v1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    iget-boolean p0, p0, Landroidx/fragment/app/f;->c:Z

    invoke-static {v0, v1, p0}, Landroidx/fragment/app/u0;->a(Landroidx/fragment/app/t;Landroidx/fragment/app/t;Z)V

    return-void
.end method
