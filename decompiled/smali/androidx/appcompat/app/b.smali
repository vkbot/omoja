.class public final synthetic Landroidx/appcompat/app/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/app/b;->b:Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/app/b;->c:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b;->b:Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/b;->c:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->a(Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
