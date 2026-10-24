.class Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CarUiListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListItemViewHolder"
.end annotation


# instance fields
.field final mActionContainer:Landroid/view/ViewGroup;

.field final mActionContainerTouchInterceptor:Landroid/view/View;

.field final mActionDivider:Landroid/view/View;

.field final mAvatarIcon:Landroid/widget/ImageView;

.field final mBody:Landroid/widget/TextView;

.field final mCheckBox:Landroid/widget/CheckBox;

.field final mContentIcon:Landroid/widget/ImageView;

.field final mIcon:Landroid/widget/ImageView;

.field final mIconContainer:Landroid/view/ViewGroup;

.field final mRadioButton:Landroid/widget/RadioButton;

.field final mReducedTouchInterceptor:Landroid/view/View;

.field final mSupplementalIcon:Landroid/widget/ImageView;

.field final mSwitch:Landroid/widget/Switch;

.field final mTitle:Landroid/widget/TextView;

.field final mTouchInterceptor:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 172
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 173
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_title:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_body:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mBody:Landroid/widget/TextView;

    .line 175
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_icon:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 176
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_content_icon:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mContentIcon:Landroid/widget/ImageView;

    .line 177
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_avatar_icon:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mAvatarIcon:Landroid/widget/ImageView;

    .line 178
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_icon_container:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mIconContainer:Landroid/view/ViewGroup;

    .line 179
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_action_container:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainer:Landroid/view/ViewGroup;

    .line 180
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_action_divider:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionDivider:Landroid/view/View;

    .line 181
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_switch_widget:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 182
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_checkbox_widget:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 183
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_radio_button_widget:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 184
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_supplemental_icon:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    .line 186
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_reduced_touch_interceptor:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mReducedTouchInterceptor:Landroid/view/View;

    .line 188
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_touch_interceptor:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    .line 190
    sget v0, Lcom/android/car/ui/R$id;->car_ui_list_item_action_container_touch_interceptor:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainerTouchInterceptor:Landroid/view/View;

    return-void
.end method

.method static synthetic lambda$bind$0(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 257
    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;->onClick(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$bind$1(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 280
    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;->onClick(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$bind$2(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 300
    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;->onClick(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$bind$3(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 309
    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;->onClick(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$bind$4(Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/view/View;)V
    .locals 0

    .line 315
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getSupplementalIconOnClickListener()Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getSupplementalIconOnClickListener()Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;->onClick(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$bindCompoundButton$5(Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 348
    invoke-virtual {p0, p2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$bindCompoundButton$6(Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/view/View;)V
    .locals 0

    .line 354
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    if-eqz p1, :cond_0

    .line 356
    invoke-interface {p1, p2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;->onClick(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method bind(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 6

    .line 195
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getBody()Ljava/lang/CharSequence;

    move-result-object v1

    .line 197
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mAvatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v2, :cond_5

    .line 218
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 220
    sget-object v0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$1;->$SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$IconType:[I

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getPrimaryIconType()Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto :goto_2

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mAvatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mAvatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mAvatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    goto :goto_2

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 239
    :goto_2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionDivider:Landroid/view/View;

    .line 240
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->isActionDividerVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_3

    :cond_6
    move v1, v5

    .line 239
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getOnClickListener()Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    move-result-object v0

    .line 248
    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$1;->$SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$Action:[I

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getAction()Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 323
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown secondary action type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :pswitch_0
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getSupplementalIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 296
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getSupplementalIconOnClickListener()Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_7

    .line 297
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    new-instance v2, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$j6Kl0VK2D7maS58g7oclJxfONmk;

    invoke-direct {v2, v0, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$j6Kl0VK2D7maS58g7oclJxfONmk;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mReducedTouchInterceptor:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainerTouchInterceptor:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 306
    :cond_7
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mReducedTouchInterceptor:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mReducedTouchInterceptor:Landroid/view/View;

    new-instance v2, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$vKPFwRo_FVQMiwVwkDs4sXpSKRQ;

    invoke-direct {v2, v0, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$vKPFwRo_FVQMiwVwkDs4sXpSKRQ;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainerTouchInterceptor:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainerTouchInterceptor:Landroid/view/View;

    new-instance v1, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$H9Uy6PlmUDvvSb-kLC_TMUKevKg;

    invoke-direct {v1, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$H9Uy6PlmUDvvSb-kLC_TMUKevKg;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 273
    :pswitch_1
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/car/ui/R$drawable;->car_ui_preference_icon_chevron:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    new-instance v2, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$_Kyrg36HwlbDv2E3CBtCHtfUhnY;

    invoke-direct {v2, v0, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$_Kyrg36HwlbDv2E3CBtCHtfUhnY;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mReducedTouchInterceptor:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainerTouchInterceptor:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 270
    :pswitch_2
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->bindCompoundButton(Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V

    goto :goto_4

    .line 267
    :pswitch_3
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->bindCompoundButton(Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V

    goto :goto_4

    .line 264
    :pswitch_4
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->bindCompoundButton(Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V

    goto :goto_4

    .line 250
    :pswitch_5
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    new-instance v2, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$vYmq87MPMF2iCDptoto9aSwoSRI;

    invoke-direct {v2, v0, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$vYmq87MPMF2iCDptoto9aSwoSRI;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mReducedTouchInterceptor:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainerTouchInterceptor:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 327
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->setEnabled(Landroid/view/View;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method bindCompoundButton(Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    const/4 v1, 0x0

    .line 345
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 346
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->isChecked()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 347
    new-instance v1, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$Hf4LbJlbyWgUPek_Tf8nBv3L2ug;

    invoke-direct {v1, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$Hf4LbJlbyWgUPek_Tf8nBv3L2ug;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 352
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mTouchInterceptor:Landroid/view/View;

    new-instance v2, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$-ebGuNtqEeHmdL3tKS0Y8Kofm5M;

    invoke-direct {v2, p2, p3, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$-ebGuNtqEeHmdL3tKS0Y8Kofm5M;-><init>(Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mReducedTouchInterceptor:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainerTouchInterceptor:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 363
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->mActionContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method setEnabled(Landroid/view/View;Z)V
    .locals 2

    .line 331
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 332
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 333
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 335
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->setEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
