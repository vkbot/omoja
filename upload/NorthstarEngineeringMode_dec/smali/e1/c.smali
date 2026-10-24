.class public final Le1/c;
.super Le1/a;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static final synthetic l:I


# instance fields
.field public d:Lf/d;

.field public e:Lz0/a;

.field public f:Landroid/net/wifi/WifiManager;

.field public g:Z

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/ImageView;

.field public j:I

.field public k:I


# virtual methods
.method public final a(Landroid/widget/FrameLayout;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0072

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0330

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f0a01ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a03ff

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a017f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Le1/c;->h:Landroid/widget/EditText;

    const v3, 0x7f0a01f2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Le1/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Le1/c;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Le1/c;->h:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Le1/c;->d:Lf/d;

    iget-object v1, v1, Lf/d;->d1:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f1200d0

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Le1/c;->b()V

    iget-object p1, p0, Le1/c;->i:Landroid/widget/ImageView;

    iget-boolean v1, p0, Le1/c;->g:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800bf

    goto :goto_0

    :cond_0
    const v1, 0x7f0800bc

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Le1/b;

    invoke-direct {v1, p0, v0}, Le1/b;-><init>(Le1/c;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Le1/c;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Le1/c;->h:Landroid/widget/EditText;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Le1/c;->h:Landroid/widget/EditText;

    iget-boolean v1, p0, Le1/c;->g:Z

    if-nez v1, :cond_0

    const/16 v1, 0x91

    goto :goto_0

    :cond_0
    const/16 v1, 0x81

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Le1/c;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Le1/c;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object p0, p0, Le1/a;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    invoke-super {p0, p1}, Le1/a;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Le1/a;->a:Landroid/view/View;

    const-string v2, "input_method"

    const/4 v3, 0x2

    const v4, 0x7f0a01ef

    if-ne v0, v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Le1/c;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x7f0a01f2

    const/4 v5, 0x1

    if-ne v0, v4, :cond_3

    iget-boolean p1, p0, Le1/c;->g:Z

    xor-int/2addr p1, v5

    iput-boolean p1, p0, Le1/c;->g:Z

    invoke-virtual {p0}, Le1/c;->b()V

    iget-object p1, p0, Le1/c;->i:Landroid/widget/ImageView;

    iget-boolean p0, p0, Le1/c;->g:Z

    if-eqz p0, :cond_2

    const p0, 0x7f0800bf

    goto :goto_0

    :cond_2
    const p0, 0x7f0800bc

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0420

    if-ne p1, v0, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Le1/c;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_4
    iget-object p1, p0, Le1/c;->d:Lf/d;

    iget-object p1, p1, Lf/d;->d1:Ljava/lang/String;

    iget-object v0, p0, Le1/c;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le1/c;->e:Lz0/a;

    iget v2, v1, Lz0/a;->b:I

    const/4 v4, 0x0

    if-nez v2, :cond_5

    move-object v2, v4

    goto :goto_2

    :cond_5
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v6, v1, Lz0/a;->a:Lf/d;

    if-nez v6, :cond_6

    invoke-static {p1}, Lf/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-boolean v5, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Lf/d;->l()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, v6, Lf/d;->d1:Ljava/lang/String;

    invoke-static {p1}, Lf/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object p1, v6, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_1
    invoke-static {v2}, Lr2/b;->f(Landroid/net/wifi/WifiConfiguration;)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "get config security = "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lz0/a;->c:I

    const-string v7, "a"

    invoke-static {p1, v6, v7}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz v2, :cond_10

    iget p1, v1, Lz0/a;->c:I

    const/4 v6, 0x0

    if-eqz p1, :cond_e

    const/16 v7, 0x22

    const-string v8, "\""

    if-eq p1, v5, :cond_b

    if-eq p1, v3, :cond_9

    const/4 v3, 0x3

    if-eq p1, v3, :cond_b

    const/4 v3, 0x5

    if-eq p1, v3, :cond_8

    goto/16 :goto_4

    :cond_8
    const/4 p1, 0x4

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    :cond_b
    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v6}, Ljava/util/BitSet;->set(I)V

    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v6}, Ljava/util/BitSet;->set(I)V

    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0xa

    if-eq p1, v3, :cond_c

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_c

    const/16 v3, 0x3a

    if-ne p1, v3, :cond_d

    :cond_c
    const-string p1, "[0-9A-Fa-f]*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v0, p1, v6

    goto :goto_3

    :cond_d
    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    goto :goto_3

    :cond_e
    iget-object p1, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v6}, Ljava/util/BitSet;->set(I)V

    :cond_f
    :goto_3
    new-instance p1, Landroid/net/IpConfiguration;

    iget-object v0, v1, Lz0/a;->d:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v1, v1, Lz0/a;->e:Landroid/net/IpConfiguration$ProxySettings;

    invoke-direct {p1, v0, v1, v4, v4}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-static {v2, p1}, Lr2/b;->e(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)V

    :cond_10
    move-object v4, v2

    :goto_4
    iget-object p0, p0, Le1/c;->f:Landroid/net/wifi/WifiManager;

    invoke-static {p0, v4}, Lr2/c;->p(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    invoke-static {p0, v4}, Lr2/c;->a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    :cond_11
    :goto_5
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x8

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Le1/a;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
