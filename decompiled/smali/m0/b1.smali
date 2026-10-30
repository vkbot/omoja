.class public final synthetic Lm0/b1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 12
    iput p3, p0, Lm0/b1;->b:I

    iput-object p1, p0, Lm0/b1;->c:Landroid/content/Context;

    iput-object p2, p0, Lm0/b1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm0/w1;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lm0/b1;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lm0/b1;->c:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p3, p0, Lm0/b1;->d:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lm0/b1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/b1;->d:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lm0/b1;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lm0/w1;->u(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    .line 18
    .line 19
    const-class v4, Lcom/example/navistart/DPups;

    .line 20
    .line 21
    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lm0/b1;->c:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v1, p0, Lm0/b1;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    iget-object v0, p0, Lm0/b1;->c:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v1, p0, Lm0/b1;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
