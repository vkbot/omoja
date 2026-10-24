.class Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;->margin(II)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;

.field final synthetic val$leftMargin:I

.field final synthetic val$rightMargin:I


# direct methods
.method public constructor <init>(Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$2;->this$0:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;

    iput p2, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$2;->val$leftMargin:I

    iput p3, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$2;->val$rightMargin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dividerLeftMargin(ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    iget p0, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$2;->val$leftMargin:I

    return p0
.end method

.method public dividerRightMargin(ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    iget p0, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$2;->val$rightMargin:I

    return p0
.end method
