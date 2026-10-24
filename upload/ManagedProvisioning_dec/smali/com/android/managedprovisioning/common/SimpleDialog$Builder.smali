.class public Lcom/android/managedprovisioning/common/SimpleDialog$Builder;
.super Ljava/lang/Object;
.source "SimpleDialog.java"

# interfaces
.implements Lcom/android/managedprovisioning/common/DialogBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/common/SimpleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCancelable:Ljava/lang/Boolean;

.field private mMessage:Ljava/lang/Integer;

.field private mNegativeButtonMessage:Ljava/lang/Integer;

.field private mPositiveButtonMessage:Ljava/lang/Integer;

.field private mTitle:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroid/app/DialogFragment;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->build()Lcom/android/managedprovisioning/common/SimpleDialog;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/managedprovisioning/common/SimpleDialog;
    .locals 4

    .line 155
    new-instance v0, Lcom/android/managedprovisioning/common/SimpleDialog;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SimpleDialog;-><init>()V

    .line 156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 158
    iget-object v2, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mTitle:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mMessage:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mNegativeButtonMessage:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "negativeButtonMessage"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mPositiveButtonMessage:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 171
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "positiveButtonMessage"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    :cond_3
    iget-object p0, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mCancelable:Ljava/lang/Boolean;

    if-eqz p0, :cond_4

    .line 175
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 178
    :cond_4
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setCancelable(Z)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;
    .locals 0

    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mCancelable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;
    .locals 0

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mMessage:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNegativeButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;
    .locals 0

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mNegativeButtonMessage:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPositiveButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;
    .locals 0

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mPositiveButtonMessage:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTitle(Ljava/lang/Integer;)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->mTitle:Ljava/lang/Integer;

    return-object p0
.end method
