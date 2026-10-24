.class public abstract Lcom/mega/carsettings/utils/AbsCountPreferenceClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public c:I

.field public r:J


# virtual methods
.method public abstract a()Z
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mega/carsettings/utils/AbsCountPreferenceClickListener;->r:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    iget p1, p0, Lcom/mega/carsettings/utils/AbsCountPreferenceClickListener;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/mega/carsettings/utils/AbsCountPreferenceClickListener;->c:I

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mega/carsettings/utils/AbsCountPreferenceClickListener;->r:J

    invoke-virtual {p0}, Lcom/mega/carsettings/utils/AbsCountPreferenceClickListener;->a()Z

    move-result p0

    return p0

    :cond_0
    iput-wide v0, p0, Lcom/mega/carsettings/utils/AbsCountPreferenceClickListener;->r:J

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/mega/carsettings/utils/AbsCountPreferenceClickListener;->c:I

    iput-wide v0, p0, Lcom/mega/carsettings/utils/AbsCountPreferenceClickListener;->r:J

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
