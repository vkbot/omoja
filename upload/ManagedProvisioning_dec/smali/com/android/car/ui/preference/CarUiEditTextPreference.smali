.class public Lcom/android/car/ui/preference/CarUiEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "CarUiEditTextPreference.java"


# instance fields
.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->mUxRestricted:Z

    return-void
.end method


# virtual methods
.method public getWidgetActionContainer(Landroidx/preference/PreferenceViewHolder;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/android/car/ui/R$id;->action_widget_container:I

    invoke-static {p0, p1}, Lcom/android/car/ui/utils/CarUiUtils;->findViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
