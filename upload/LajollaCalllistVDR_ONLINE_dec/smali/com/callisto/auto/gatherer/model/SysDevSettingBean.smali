.class public Lcom/callisto/auto/gatherer/model/SysDevSettingBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_dev_setting_stat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevSettingStat()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/SysDevSettingBean;->b_dev_setting_stat:I

    return v0
.end method

.method public setDevSettingStat(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/SysDevSettingBean;->b_dev_setting_stat:I

    return-void
.end method
