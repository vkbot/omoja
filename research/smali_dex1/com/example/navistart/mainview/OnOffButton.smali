.class public Lcom/example/navistart/mainview/OnOffButton;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static g:Ljava/lang/Boolean;


# instance fields
.field public final b:Landroid/widget/Button;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/ImageView;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Lcom/example/navistart/mainview/OnOffButton;->g:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x7f0c00fa

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    const p1, 0x7f090384

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/Button;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/example/navistart/mainview/OnOffButton;->b:Landroid/widget/Button;

    .line 20
    .line 21
    const p1, 0x7f090511

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/example/navistart/mainview/OnOffButton;->c:Landroid/widget/TextView;

    .line 31
    .line 32
    const p1, 0x7f09027f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/example/navistart/mainview/OnOffButton;->d:Landroid/widget/ImageView;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/example/navistart/mainview/OnOffButton;->b:Landroid/widget/Button;

    .line 44
    .line 45
    new-instance p2, Landroidx/navigation/c;

    .line 46
    .line 47
    const/16 v0, 0x15

    .line 48
    .line 49
    invoke-direct {p2, v0, p0}, Landroidx/navigation/c;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public getOnOff()Ljava/lang/Boolean;
    .registers 2

    .line 1
    sget-object v0, Lcom/example/navistart/mainview/OnOffButton;->g:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setEnable(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/mainview/OnOffButton;->b:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setOnOff(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    sput-object p1, Lcom/example/navistart/mainview/OnOffButton;->g:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/example/navistart/mainview/OnOffButton;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    if-eqz p1, :cond_11

    .line 10
    .line 11
    const p1, 0x7f07015e

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    const p1, 0x7f07015c

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setRunnableOff(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/example/navistart/mainview/OnOffButton;->f:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-void
.end method

.method public setRunnableOn(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/example/navistart/mainview/OnOffButton;->e:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-void
.end method

.method public setTextButton(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/mainview/OnOffButton;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
