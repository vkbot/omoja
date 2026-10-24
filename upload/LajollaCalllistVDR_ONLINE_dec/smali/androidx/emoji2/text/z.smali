.class public final Landroidx/emoji2/text/z;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Landroidx/emoji2/text/z;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/z;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget v0, p0, Landroidx/emoji2/text/z;->a:I

    iget-object v1, p0, Landroidx/emoji2/text/z;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    check-cast v1, Le1/a;

    iget-object p1, v1, Le1/a;->d:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Le1/a;->b(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SysDevSettingMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    check-cast v1, Landroidx/emoji2/text/a0;

    invoke-virtual {v1}, Landroidx/emoji2/text/a0;->c()V

    return-void

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    check-cast v1, Le1/a;

    iget-object p1, v1, Le1/a;->d:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Le1/a;->c(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SystemConfigMonitor"

    invoke-static {p2, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
