.class public Lcom/mega/engineeringmode/DataBinderMapperImpl;
.super Landroidx/databinding/DataBinderMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/DataBinderMapperImpl$b;,
        Lcom/mega/engineeringmode/DataBinderMapperImpl$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/mega/engineeringmode/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0d001d

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0020

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0021

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0022

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0023

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0024

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0025

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0027

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d002c

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d002e

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0032

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0033

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0034

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0035

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0036

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0037

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0038

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0039

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d003a

    const/16 v3, 0x13

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d004a

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0050

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d011a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/databinding/DataBinderMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public final collectDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    invoke-direct {v0}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final convertBrIdToString(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/mega/engineeringmode/DataBinderMapperImpl$a;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 6

    sget-object p0, Lcom/mega/engineeringmode/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    .line 1
    invoke-virtual {p0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p3, 0x0

    if-lez p0, :cond_17

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "layout/vedio_fragment_0"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Lcom/mega/engineeringmode/databinding/VedioFragmentBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/VedioFragmentBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for vedio_fragment is invalid. Received: "

    .line 6
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-string p0, "layout/audio_fragment_0"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    new-instance p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for audio_fragment is invalid. Received: "

    .line 11
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const-string p0, "layout/activity_temperature_info_0"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 14
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_temperature_info is invalid. Received: "

    .line 16
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const-string p0, "layout/activity_key_simulation_0"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 19
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityKeySimulationBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_key_simulation is invalid. Received: "

    .line 21
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    const-string p0, "layout/activity_key_input_0"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 24
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 25
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_key_input is invalid. Received: "

    .line 26
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    const-string p0, "layout/activity_internal_config_0"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 29
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBindingImpl;

    .line 30
    sget-object v0, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBindingImpl;->y:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v5, p3, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 31
    aget-object v4, v0, v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v0, v0, v3

    check-cast v0, Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-direct {p0, p1, p2, v4, v0}, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/mega/engineeringmode/ui/MegaSwitch;)V

    iput-wide v1, p0, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBindingImpl;->x:J

    iget-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBindingImpl;->invalidateAll()V

    return-object p0

    .line 35
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_internal_config is invalid. Received: "

    .line 36
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    const-string p0, "layout/activity_ihu_status_0"

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 39
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 40
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_ihu_status is invalid. Received: "

    .line 41
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    const-string p0, "layout/activity_icm_status_0"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 44
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityIcmStatusBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityIcmStatusBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 45
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_icm_status is invalid. Received: "

    .line 46
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    const-string p0, "layout/activity_icm_setting_0"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 49
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBindingImpl;

    .line 50
    sget-object v0, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBindingImpl;->Z:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v5, p3, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 51
    aget-object v4, v0, v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v0, v0, v3

    check-cast v0, Lcom/mega/engineeringmode/ui/custom/EasyButton;

    invoke-direct {p0, p1, p2, v4, v0}, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/mega/engineeringmode/ui/custom/EasyButton;)V

    iput-wide v1, p0, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBindingImpl;->y:J

    iget-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBindingImpl;->invalidateAll()V

    return-object p0

    .line 55
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_icm_setting is invalid. Received: "

    .line 56
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    const-string p0, "layout/activity_icm_data_0"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 59
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityIcmDataBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityIcmDataBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 60
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_icm_data is invalid. Received: "

    .line 61
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_a
    const-string p0, "layout/activity_hicar_0"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 64
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityHicarBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityHicarBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 65
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_hicar is invalid. Received: "

    .line 66
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b
    const-string p0, "layout/activity_function_safe_0"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 69
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 70
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_function_safe is invalid. Received: "

    .line 71
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_c
    const-string p0, "layout/activity_dtc_0"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 74
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityDtcBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityDtcBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 75
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_dtc is invalid. Received: "

    .line 76
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    const-string p0, "layout/activity_display_0"

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 79
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 80
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_display is invalid. Received: "

    .line 81
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_e
    const-string p0, "layout/activity_connector_status_0"

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 84
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 85
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_connector_status is invalid. Received: "

    .line 86
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_f
    const-string p0, "layout/activity_channel_select_0"

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 89
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 90
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_channel_select is invalid. Received: "

    .line 91
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_10
    const-string p0, "layout/activity_certificate_usbactivity_0"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 94
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 95
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_certificate_usbactivity is invalid. Received: "

    .line 96
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_11
    const-string p0, "layout/activity_carplay_0"

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 99
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 100
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_carplay is invalid. Received: "

    .line 101
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_12
    const-string p0, "layout/activity_car_link_test_0"

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 104
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityCarLinkTestBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityCarLinkTestBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 105
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_car_link_test is invalid. Received: "

    .line 106
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13
    const-string p0, "layout/activity_can_data_0"

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 109
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityCanDataBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityCanDataBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 110
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_can_data is invalid. Received: "

    .line 111
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_14
    const-string p0, "layout/activity_battery_info_0"

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 114
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 115
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_battery_info is invalid. Received: "

    .line 116
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_15
    const-string p0, "layout/activity_android_auto_0"

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 119
    new-instance p0, Lcom/mega/engineeringmode/databinding/ActivityAndroidAutoBindingImpl;

    invoke-direct {p0, p2, p1}, Lcom/mega/engineeringmode/databinding/ActivityAndroidAutoBindingImpl;-><init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V

    return-object p0

    .line 120
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for activity_android_auto is invalid. Received: "

    .line 121
    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "view must have a tag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_0
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 548
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/mega/engineeringmode/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    .line 549
    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 550
    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 551
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "view must have a tag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final getLayoutId(Ljava/lang/String;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    sget-object v0, Lcom/mega/engineeringmode/DataBinderMapperImpl$b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method
