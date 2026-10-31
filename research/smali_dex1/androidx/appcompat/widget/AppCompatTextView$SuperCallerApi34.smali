.class Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi34;
.super Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x22
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperCallerApi34"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi34;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setLineHeight(IF)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi34;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    # invokes: Landroid/widget/TextView;->setLineHeight(IF)V
    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->access$1201(Landroidx/appcompat/widget/AppCompatTextView;IF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
