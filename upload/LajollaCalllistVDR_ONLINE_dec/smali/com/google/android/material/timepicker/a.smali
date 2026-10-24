.class public final Lcom/google/android/material/timepicker/a;
.super Lcom/google/android/material/internal/w;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/material/timepicker/ChipTextInputComboView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/a;->b:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-direct {p0}, Lcom/google/android/material/internal/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/timepicker/a;->b:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    if-eqz v0, :cond_0

    iget-object p1, v1, Lcom/google/android/material/timepicker/ChipTextInputComboView;->b:Lcom/google/android/material/chip/Chip;

    const-string v0, "00"

    invoke-static {v1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Lcom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/google/android/material/timepicker/ChipTextInputComboView;->b:Lcom/google/android/material/chip/Chip;

    invoke-static {v1, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Lcom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
