.class Lcom/android/car/ui/toolbar/CarUiEditText;
.super Landroid/widget/EditText;
.source "CarUiEditText.java"


# instance fields
.field private final mPrivateImeCommandCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    const-string v0, "automotive_wide_screen_clear_data"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "automotive_wide_screen_post_load_search_results"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;

    .line 76
    invoke-interface {v0}, Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;->onPostLoadSearchResults()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_5

    .line 80
    iget-object v0, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v0, "search_result_item_id_list"

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;->onItemClicked(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "search_result_supplemental_icon_id_list"

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 91
    iget-object v1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-interface {v2, v3}, Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;->onSecondaryImageClicked(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "content_area_surface_display_id"

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "content_area_surface_height"

    .line 98
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "content_area_surface_width"

    .line 99
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "content_area_surface_host_token"

    .line 100
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 103
    iget-object p0, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;

    .line 104
    invoke-interface {v3, v0, p2, v1, v2}, Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;->onSurfaceInfo(ILandroid/os/IBinder;II)V

    goto :goto_3

    :cond_5
    :goto_4
    return p1
.end method

.method public registerOnPrivateImeCommandListener(Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->mPrivateImeCommandCallback:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
