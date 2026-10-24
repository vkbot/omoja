.class public Lcom/android/car/ui/preference/CarUiListPreference;
.super Landroidx/preference/ListPreference;
.source "CarUiListPreference.java"


# instance fields
.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiListPreference;->mUxRestricted:Z

    return-void
.end method
