.class public final Landroidx/appcompat/widget/u;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/widget/u;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/u;->a:I

    iget-object v1, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/ActivityChooserView;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object p0, v1, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :goto_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object p0, v1, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onInvalidated()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/u;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    return-void

    :pswitch_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object p0, p0, Landroidx/appcompat/widget/u;->b:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
