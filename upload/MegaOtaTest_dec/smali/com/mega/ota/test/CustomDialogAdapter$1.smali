.class Lcom/mega/ota/test/CustomDialogAdapter$1;
.super Ljava/lang/Object;
.source "CustomDialogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/ota/test/CustomDialogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/ota/test/CustomDialogAdapter;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mega/ota/test/CustomDialogAdapter;ILcom/mega/ota/test/CustomDialogAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/ota/test/CustomDialogAdapter;

    .line 52
    iput-object p1, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    iput p2, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$viewHolder:Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$000(Lcom/mega/ota/test/CustomDialogAdapter;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, ""

    if-ne v0, v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    iget v4, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    invoke-static {v0, v4}, Lcom/mega/ota/test/CustomDialogAdapter;->access$002(Lcom/mega/ota/test/CustomDialogAdapter;I)I

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$000(Lcom/mega/ota/test/CustomDialogAdapter;)I

    move-result v0

    iget v4, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    if-eq v0, v4, :cond_2

    .line 59
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    iget-object v0, v0, Lcom/mega/ota/test/CustomDialogAdapter;->holdersByPosition:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v4}, Lcom/mega/ota/test/CustomDialogAdapter;->access$000(Lcom/mega/ota/test/CustomDialogAdapter;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "lastTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 61
    iget-object v4, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v4}, Lcom/mega/ota/test/CustomDialogAdapter;->access$100(Lcom/mega/ota/test/CustomDialogAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mega/ota/test/cbfBean;

    invoke-virtual {v4, v1}, Lcom/mega/ota/test/cbfBean;->setSelected(Z)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    iget v5, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    invoke-static {v4, v5}, Lcom/mega/ota/test/CustomDialogAdapter;->access$002(Lcom/mega/ota/test/CustomDialogAdapter;I)I

    .line 65
    .end local v0    # "lastTextView":Landroid/widget/TextView;
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$200(Lcom/mega/ota/test/CustomDialogAdapter;)Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$200(Lcom/mega/ota/test/CustomDialogAdapter;)Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;->onItemClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$100(Lcom/mega/ota/test/CustomDialogAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/ota/test/cbfBean;

    invoke-virtual {v0}, Lcom/mega/ota/test/cbfBean;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$viewHolder:Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;

    iget-object v0, v0, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$100(Lcom/mega/ota/test/CustomDialogAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/ota/test/cbfBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mega/ota/test/cbfBean;->setSelected(Z)V

    .line 75
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$200(Lcom/mega/ota/test/CustomDialogAdapter;)Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$200(Lcom/mega/ota/test/CustomDialogAdapter;)Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v1}, Lcom/mega/ota/test/CustomDialogAdapter;->access$100(Lcom/mega/ota/test/CustomDialogAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/ota/test/cbfBean;

    invoke-virtual {v1}, Lcom/mega/ota/test/cbfBean;->getmFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v2}, Lcom/mega/ota/test/CustomDialogAdapter;->access$100(Lcom/mega/ota/test/CustomDialogAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/ota/test/cbfBean;

    invoke-virtual {v2}, Lcom/mega/ota/test/cbfBean;->getmFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;->onItemClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$100(Lcom/mega/ota/test/CustomDialogAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$position:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/ota/test/cbfBean;

    invoke-virtual {v0, v1}, Lcom/mega/ota/test/cbfBean;->setSelected(Z)V

    .line 80
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->val$viewHolder:Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;

    iget-object v0, v0, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$200(Lcom/mega/ota/test/CustomDialogAdapter;)Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-static {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->access$200(Lcom/mega/ota/test/CustomDialogAdapter;)Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;->onItemClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter$1;->this$0:Lcom/mega/ota/test/CustomDialogAdapter;

    invoke-virtual {v0}, Lcom/mega/ota/test/CustomDialogAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method
