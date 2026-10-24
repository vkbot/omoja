.class public Lcom/mega/engineeringmode/function/LogLevelActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/Byte;

.field public static final B:Ljava/lang/Byte;

.field public static final C:Ljava/lang/Byte;

.field public static final D:Ljava/lang/Byte;

.field public static E:Ljava/lang/Byte;

.field public static final F:Ljava/lang/Byte;

.field public static final G:Ljava/lang/Byte;

.field public static final H:Ljava/lang/Byte;


# instance fields
.field public i:Ln2/i;

.field public j:Lcom/mega/engineeringmode/ui/MegaSwitch;

.field public k:Lcom/mega/engineeringmode/ui/MegaSwitch;

.field public l:Landroid/widget/RadioGroup;

.field public m:Landroid/widget/RadioButton;

.field public n:Landroid/widget/RadioButton;

.field public o:Landroid/widget/RadioButton;

.field public p:Landroid/widget/RadioButton;

.field public q:Landroid/widget/RadioButton;

.field public r:Landroid/widget/RadioButton;

.field public s:Landroid/widget/RadioButton;

.field public t:Landroid/widget/RadioGroup;

.field public u:Landroid/widget/RadioButton;

.field public v:Landroid/widget/RadioButton;

.field public w:Landroid/widget/RadioButton;

.field public x:Landroid/widget/RadioButton;

.field public y:Landroid/widget/RadioButton;

.field public final z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x76

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/mega/engineeringmode/function/LogLevelActivity;->A:Ljava/lang/Byte;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/mega/engineeringmode/function/LogLevelActivity;->B:Ljava/lang/Byte;

    sput-object v0, Lcom/mega/engineeringmode/function/LogLevelActivity;->C:Ljava/lang/Byte;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/mega/engineeringmode/function/LogLevelActivity;->D:Ljava/lang/Byte;

    sput-object v0, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    sput-object v0, Lcom/mega/engineeringmode/function/LogLevelActivity;->F:Ljava/lang/Byte;

    sput-object v0, Lcom/mega/engineeringmode/function/LogLevelActivity;->G:Ljava/lang/Byte;

    sput-object v0, Lcom/mega/engineeringmode/function/LogLevelActivity;->H:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->z:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d009a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->i:Ln2/i;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->z:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sget-object v1, Lcom/mega/engineeringmode/function/LogLevelActivity;->A:Ljava/lang/Byte;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    sget-object v2, Lcom/mega/engineeringmode/function/LogLevelActivity;->B:Ljava/lang/Byte;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x2

    sget-object v3, Lcom/mega/engineeringmode/function/LogLevelActivity;->C:Ljava/lang/Byte;

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x3

    sget-object v4, Lcom/mega/engineeringmode/function/LogLevelActivity;->D:Ljava/lang/Byte;

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x5

    sget-object v6, Lcom/mega/engineeringmode/function/LogLevelActivity;->F:Ljava/lang/Byte;

    invoke-virtual {p1, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v6, 0x6

    sget-object v7, Lcom/mega/engineeringmode/function/LogLevelActivity;->G:Ljava/lang/Byte;

    invoke-virtual {p1, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v6, 0x7

    sget-object v7, Lcom/mega/engineeringmode/function/LogLevelActivity;->H:Ljava/lang/Byte;

    invoke-virtual {p1, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const p1, 0x7f0a0394

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->j:Lcom/mega/engineeringmode/ui/MegaSwitch;

    const p1, 0x7f0a0302

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->l:Landroid/widget/RadioGroup;

    const p1, 0x7f0a02f4

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->m:Landroid/widget/RadioButton;

    const p1, 0x7f0a02f7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->n:Landroid/widget/RadioButton;

    const p1, 0x7f0a02fa

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->o:Landroid/widget/RadioButton;

    const p1, 0x7f0a02f9

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->p:Landroid/widget/RadioButton;

    const p1, 0x7f0a02f8

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->q:Landroid/widget/RadioButton;

    const p1, 0x7f0a02f5

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->r:Landroid/widget/RadioButton;

    const p1, 0x7f0a02f6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->s:Landroid/widget/RadioButton;

    const p1, 0x7f0a0301

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->t:Landroid/widget/RadioGroup;

    const p1, 0x7f0a02ef

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->u:Landroid/widget/RadioButton;

    const p1, 0x7f0a02ec

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->v:Landroid/widget/RadioButton;

    const p1, 0x7f0a02ee

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->w:Landroid/widget/RadioButton;

    const p1, 0x7f0a02f0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->x:Landroid/widget/RadioButton;

    const p1, 0x7f0a02ed

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->y:Landroid/widget/RadioButton;

    const p1, 0x7f0a038f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->k:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-static {}, Ld/f;->v()Z

    move-result p1

    const-string v6, "buryPonit  "

    const-string v7, "LogLevelActivity"

    invoke-static {v6, p1, v7}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v6, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->k:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {v6, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->k:Lcom/mega/engineeringmode/ui/MegaSwitch;

    new-instance v6, Lg1/k;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p1

    invoke-static {}, Ls2/a;->a()I

    move-result v6

    iget-object p1, p1, Ln2/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v7, "logleveltest_log_dmc_switch"

    invoke-static {p1, v7, v0, v6}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->j:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1, v1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->l:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->l:Landroid/widget/RadioGroup;

    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p1

    invoke-static {}, Ls2/a;->a()I

    move-result v6

    iget-object p1, p1, Ln2/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v7, "logleveltest_android_level"

    invoke-static {p1, v7, v0, v6}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_5

    const-string/jumbo v6, "persist.log.tag"

    const-string v7, "D"

    invoke-static {v6, v7}, Ld/f;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "V"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    const-string v7, "I"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move p1, v5

    goto :goto_1

    :cond_4
    const-string v7, "E"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move p1, v4

    :cond_5
    :goto_1
    if-eq p1, v1, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->y:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->x:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->w:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->v:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->u:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p1

    invoke-static {}, Ls2/a;->a()I

    move-result v2

    iget-object p1, p1, Ln2/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "logleveltest_qnx_level"

    invoke-static {p1, v3, v0, v2}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->s:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    :pswitch_1
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->r:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->q:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->p:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    :pswitch_4
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->o:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->n:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    :pswitch_6
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->m:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f1201d3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->j:Lcom/mega/engineeringmode/ui/MegaSwitch;

    new-instance v1, Lg1/g;

    invoke-direct {v1, v0, p0}, Lg1/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->l:Landroid/widget/RadioGroup;

    new-instance v1, Lg1/h;

    invoke-direct {v1, p0, v0}, Lg1/h;-><init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;I)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->t:Landroid/widget/RadioGroup;

    new-instance v0, Lg1/i;

    invoke-direct {v0, p0}, Lg1/i;-><init>(Lcom/mega/engineeringmode/function/LogLevelActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
