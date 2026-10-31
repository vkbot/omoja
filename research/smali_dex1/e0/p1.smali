.class public final synthetic Le0/p1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/example/navistart/ModernMainActivity;

.field public final synthetic b:Lcom/google/android/flexbox/FlexboxLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/ModernMainActivity;Lcom/google/android/flexbox/FlexboxLayout;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/p1;->a:Lcom/example/navistart/ModernMainActivity;

    .line 5
    .line 6
    iput-object p2, p0, Le0/p1;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Le0/p1;->a:Lcom/example/navistart/ModernMainActivity;

    .line 4
    .line 5
    iget-object p2, p0, Le0/p1;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/example/navistart/ModernMainActivity;->Z(Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
