.class public final synthetic Lh7/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/woha/appmanag/ManageAppsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/woha/appmanag/ManageAppsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh7/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lh7/e;->c:Lcom/woha/appmanag/ManageAppsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lh7/e;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lh7/e;->c:Lcom/woha/appmanag/ManageAppsActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/woha/appmanag/ManageAppsActivity;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :catch_0
    iget-object v0, v1, Lcom/woha/appmanag/ManageAppsActivity;->d:Lh7/f;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    iget-object v1, v1, Lcom/woha/appmanag/ManageAppsActivity;->d:Lh7/f;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    return-void

    .line 40
    :pswitch_0
    sget-object v0, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Lh7/e;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {v0, v1, v2}, Lh7/e;-><init>(Lcom/woha/appmanag/ManageAppsActivity;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
