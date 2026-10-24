.class public final Lc/a;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc/a;->u:I

    invoke-direct {p0}, Ly1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final i1(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 5

    iget p0, p0, Lc/a;->u:I

    packed-switch p0, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    goto :goto_1

    :goto_0
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    :goto_1
    return-object p0

    :pswitch_2
    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_5

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_5

    :cond_1
    const-string p0, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p0, :cond_2

    goto :goto_4

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    aget v4, p1, v2

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move-object p0, p2

    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_5
    return-object p0

    :goto_6
    packed-switch p0, :pswitch_data_2

    goto :goto_7

    :pswitch_3
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    goto :goto_8

    :goto_7
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    :goto_8
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
