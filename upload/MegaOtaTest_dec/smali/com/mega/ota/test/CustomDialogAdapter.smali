.class public Lcom/mega/ota/test/CustomDialogAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CustomDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;,
        Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/mega/ota/test/cbfBean;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field holdersByPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mega/ota/test/cbfBean;",
            ">;"
        }
    .end annotation
.end field

.field private lastSelectedPosition:I

.field private mListener:Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/mega/ota/test/cbfBean;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/ota/test/cbfBean;>;"
    const/high16 v0, 0x7f040000

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/mega/ota/test/CustomDialogAdapter;->lastSelectedPosition:I

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter;->holdersByPosition:Ljava/util/HashMap;

    .line 37
    iput-object p1, p0, Lcom/mega/ota/test/CustomDialogAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/mega/ota/test/CustomDialogAdapter;->items:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/mega/ota/test/CustomDialogAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/mega/ota/test/CustomDialogAdapter;

    .line 15
    iget v0, p0, Lcom/mega/ota/test/CustomDialogAdapter;->lastSelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/mega/ota/test/CustomDialogAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mega/ota/test/CustomDialogAdapter;
    .param p1, "x1"    # I

    .line 15
    iput p1, p0, Lcom/mega/ota/test/CustomDialogAdapter;->lastSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/mega/ota/test/CustomDialogAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mega/ota/test/CustomDialogAdapter;

    .line 15
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/ota/test/CustomDialogAdapter;)Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/mega/ota/test/CustomDialogAdapter;

    .line 15
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter;->mListener:Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 44
    if-nez p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v1, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;-><init>()V

    .line 48
    .local v1, "viewHolder":Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;
    const v2, 0x7f030011

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 49
    iget-object v2, v1, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v2, v1, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    new-instance v3, Lcom/mega/ota/test/CustomDialogAdapter$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/mega/ota/test/CustomDialogAdapter$1;-><init>(Lcom/mega/ota/test/CustomDialogAdapter;ILcom/mega/ota/test/CustomDialogAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 92
    .end local v1    # "viewHolder":Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;

    .line 96
    .restart local v1    # "viewHolder":Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;
    :goto_0
    iget-object v0, v1, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mega/ota/test/CustomDialogAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/ota/test/cbfBean;

    invoke-virtual {v2}, Lcom/mega/ota/test/cbfBean;->getmFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/mega/ota/test/CustomDialogAdapter;->holdersByPosition:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Lcom/mega/ota/test/CustomDialogAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object p2
.end method

.method public setOnItemUpdateListener(Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;

    .line 32
    iput-object p1, p0, Lcom/mega/ota/test/CustomDialogAdapter;->mListener:Lcom/mega/ota/test/CustomDialogAdapter$OnItemUpdateListener;

    .line 33
    return-void
.end method
