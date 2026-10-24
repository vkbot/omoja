.class public Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigDiffCallback;
.super Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback<",
        "Lv1/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv1/e;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv1/e;

    iget-object p1, p1, Lv1/e;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lv1/e;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(II)Z
    .locals 1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv1/e;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv1/e;

    iget-object p2, p1, Lv1/e;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv1/e;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p1, p1, Lv1/e;->c:I

    iget p0, p0, Lv1/e;->c:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
