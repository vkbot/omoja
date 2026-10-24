.class Lcom/android/server/wm/n;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/wm/n;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/n;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->J(Landroid/content/Context;)Z

    return-void
.end method
