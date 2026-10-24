.class public final Lcom/mega/engineeringmode/function/channel/ChannelActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# instance fields
.field public i:Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 44

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;->x:I

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v2

    const v3, 0x7f0d0025

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5, v2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;

    const-string v2, "inflate(layoutInflater)"

    invoke-static {v1, v2}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/mega/engineeringmode/function/channel/ChannelActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    const v1, 0x7f1200bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    const-string/jumbo v1, "ro.ecu.config.COUNTRY_OR_REGION"

    invoke-static {v1, v5}, Ld/f;->z(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Ln2/n;->b(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%08d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(format, *args)"

    invoke-static {v1, v3}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/mega/engineeringmode/function/channel/ChannelActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;

    const-string v6, "binding"

    if-eqz v3, :cond_19

    iget-object v3, v3, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "singletonList(element)"

    invoke-static {v7, v8}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0xa5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0xa1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x99

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x95

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x9d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x28

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x30

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x2c

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x24

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x13

    const/16 v19, 0x80

    const/16 v20, 0x78

    const/16 v21, 0x70

    const/16 v22, 0x68

    const/16 v23, 0x90

    const/16 v24, 0x7c

    const/16 v25, 0x74

    const/16 v26, 0x6c

    const/16 v27, 0x64

    const/16 v28, 0x11

    const/16 v29, 0x10

    const/16 v30, 0xf

    const/16 v31, 0x8c

    const/16 v32, 0x40

    const/16 v33, 0x38

    const/16 v34, 0x88

    const/16 v35, 0x84

    const/16 v36, 0xd

    const/16 v37, 0x3c

    const/16 v38, 0x34

    const/16 v39, 0xb

    const/16 v4, 0x9

    const/16 v40, 0x6

    const/4 v2, 0x5

    const/16 v41, 0x4

    const/16 v42, 0x3

    const/16 v43, 0x2

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "00111000"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "00110101"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v17, v4, v3

    aput-object v14, v4, v43

    aput-object v16, v4, v42

    aput-object v15, v4, v41

    aput-object v12, v4, v2

    aput-object v11, v4, v40

    const/4 v2, 0x7

    aput-object v13, v4, v2

    const/16 v2, 0x8

    aput-object v10, v4, v2

    invoke-static {v4}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "00110001"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_1

    :cond_1
    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v17, v4, v3

    aput-object v14, v4, v43

    aput-object v16, v4, v42

    aput-object v15, v4, v41

    aput-object v12, v4, v2

    aput-object v11, v4, v40

    const/4 v2, 0x7

    aput-object v13, v4, v2

    const/16 v2, 0x8

    aput-object v10, v4, v2

    invoke-static {v4}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "00101111"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_1

    :cond_2
    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v17, v4, v3

    aput-object v14, v4, v43

    aput-object v16, v4, v42

    aput-object v15, v4, v41

    aput-object v12, v4, v2

    aput-object v11, v4, v40

    const/4 v2, 0x7

    aput-object v13, v4, v2

    const/16 v2, 0x8

    aput-object v10, v4, v2

    invoke-static {v4}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "00101110"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "00101011"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_1

    :sswitch_6
    const-string v8, "00101000"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_1

    :cond_3
    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v17, v4, v3

    aput-object v14, v4, v43

    aput-object v16, v4, v42

    aput-object v15, v4, v41

    aput-object v12, v4, v2

    aput-object v11, v4, v40

    const/4 v2, 0x7

    aput-object v13, v4, v2

    const/16 v2, 0x8

    aput-object v10, v4, v2

    invoke-static {v4}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "00100111"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v17, v2, v3

    aput-object v14, v2, v43

    aput-object v16, v2, v42

    aput-object v15, v2, v41

    invoke-static {v2}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_8
    const-string v8, "00100101"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v8, 0xa

    new-array v7, v8, [Ljava/lang/Integer;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v17, v7, v3

    aput-object v14, v7, v43

    aput-object v16, v7, v42

    aput-object v15, v7, v41

    aput-object v12, v7, v2

    aput-object v11, v7, v40

    const/4 v2, 0x7

    aput-object v13, v7, v2

    const/16 v2, 0x8

    aput-object v10, v7, v2

    aput-object v9, v7, v4

    invoke-static {v7}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_9
    const-string v8, "00100100"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_1

    :cond_6
    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v17, v4, v3

    aput-object v14, v4, v43

    aput-object v16, v4, v42

    aput-object v15, v4, v41

    aput-object v12, v4, v2

    aput-object v11, v4, v40

    const/4 v2, 0x7

    aput-object v13, v4, v2

    const/16 v2, 0x8

    aput-object v10, v4, v2

    invoke-static {v4}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_a
    const-string v8, "00100010"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_1

    :cond_7
    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v17, v4, v3

    aput-object v14, v4, v43

    aput-object v16, v4, v42

    aput-object v15, v4, v41

    aput-object v12, v4, v2

    aput-object v11, v4, v40

    const/4 v2, 0x7

    aput-object v13, v4, v2

    const/16 v2, 0x8

    aput-object v10, v4, v2

    invoke-static {v4}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_b
    const-string v8, "00100000"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v8, "00011101"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v8, 0xe

    new-array v7, v8, [Ljava/lang/Integer;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v17, v7, v3

    aput-object v14, v7, v43

    aput-object v16, v7, v42

    aput-object v15, v7, v41

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v40

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v7, v3

    aput-object v12, v7, v4

    const/16 v2, 0xa

    aput-object v11, v7, v2

    aput-object v13, v7, v39

    const/16 v2, 0xc

    aput-object v10, v7, v2

    aput-object v9, v7, v36

    invoke-static {v7}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_d
    const-string v8, "00011100"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_1

    :sswitch_e
    const-string v8, "00010101"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_1

    :sswitch_f
    const-string v8, "00010011"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v8, 0x12

    new-array v7, v8, [Ljava/lang/Integer;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v17, v7, v3

    aput-object v14, v7, v43

    aput-object v16, v7, v42

    aput-object v15, v7, v41

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v40

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v7, v3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v7, v3

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v39

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v7, v3

    aput-object v12, v7, v36

    const/16 v2, 0xe

    aput-object v11, v7, v2

    aput-object v13, v7, v30

    aput-object v10, v7, v29

    aput-object v9, v7, v28

    invoke-static {v7}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_10
    const-string v8, "00010001"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v8, 0xa

    new-array v7, v8, [Ljava/lang/Integer;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v17, v7, v3

    aput-object v14, v7, v43

    aput-object v16, v7, v42

    aput-object v15, v7, v41

    aput-object v12, v7, v2

    aput-object v11, v7, v40

    const/4 v2, 0x7

    aput-object v13, v7, v2

    const/16 v2, 0x8

    aput-object v10, v7, v2

    aput-object v9, v7, v4

    invoke-static {v7}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "00010000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_1

    :cond_c
    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v17, v2, v3

    aput-object v14, v2, v43

    aput-object v16, v2, v42

    aput-object v15, v2, v41

    invoke-static {v2}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_12
    const-string v8, "00001111"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v8, 0x12

    new-array v7, v8, [Ljava/lang/Integer;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v17, v7, v3

    aput-object v14, v7, v43

    aput-object v16, v7, v42

    aput-object v15, v7, v41

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v40

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v7, v3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v7, v3

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v39

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v7, v3

    aput-object v12, v7, v36

    const/16 v2, 0xe

    aput-object v11, v7, v2

    aput-object v13, v7, v30

    aput-object v10, v7, v29

    aput-object v9, v7, v28

    invoke-static {v7}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_13
    const-string v4, "00001101"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_1

    :cond_e
    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v12, v2, v3

    aput-object v11, v2, v43

    aput-object v13, v2, v42

    aput-object v10, v2, v41

    invoke-static {v2}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_14
    const-string v8, "00001001"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v7, 0x19

    new-array v7, v7, [Ljava/lang/Integer;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v17, v7, v3

    aput-object v14, v7, v43

    aput-object v16, v7, v42

    aput-object v15, v7, v41

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v40

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v7, v3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v7, v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v39

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v7, v3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v36

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v7, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v30

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v29

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v28

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v7, v3

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v18

    const/16 v2, 0x14

    aput-object v12, v7, v2

    const/16 v2, 0x15

    aput-object v11, v7, v2

    const/16 v2, 0x16

    aput-object v13, v7, v2

    const/16 v2, 0x17

    aput-object v10, v7, v2

    const/16 v2, 0x18

    aput-object v9, v7, v2

    invoke-static {v7}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_15
    const-string v4, "00001000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_1

    :cond_10
    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v17, v2, v3

    aput-object v14, v2, v43

    aput-object v16, v2, v42

    aput-object v15, v2, v41

    invoke-static {v2}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_16
    const-string v8, "00000111"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_1

    :sswitch_17
    const-string v8, "00000110"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v8, 0xc

    new-array v7, v8, [Ljava/lang/Integer;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v17, v7, v3

    aput-object v16, v7, v43

    aput-object v15, v7, v42

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v41

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v40

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v7, v3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    const/16 v2, 0xa

    aput-object v12, v7, v2

    aput-object v13, v7, v39

    invoke-static {v7}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_18
    const-string v4, "00000101"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_1

    :cond_12
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v17, v4, v3

    aput-object v16, v4, v43

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v42

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v41

    aput-object v12, v4, v2

    aput-object v13, v4, v40

    invoke-static {v4}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_19
    const-string v8, "00000100"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_1

    :goto_0
    new-array v7, v7, [Ljava/lang/Integer;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v17, v7, v3

    aput-object v14, v7, v43

    aput-object v16, v7, v42

    aput-object v15, v7, v41

    aput-object v12, v7, v2

    aput-object v11, v7, v40

    const/4 v2, 0x7

    aput-object v13, v7, v2

    const/16 v2, 0x8

    aput-object v10, v7, v2

    aput-object v9, v7, v4

    invoke-static {v7}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    :sswitch_1a
    const-string v8, "00000010"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v8, 0x14

    new-array v7, v8, [Ljava/lang/Integer;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v17, v7, v3

    aput-object v14, v7, v43

    aput-object v16, v7, v42

    aput-object v15, v7, v41

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v40

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v7, v3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v7, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v39

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v7, v3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v36

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v7, v3

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v30

    aput-object v12, v7, v29

    aput-object v11, v7, v28

    const/16 v2, 0x12

    aput-object v13, v7, v2

    aput-object v10, v7, v18

    invoke-static {v7}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_1

    :sswitch_1b
    const-string v4, "00000001"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_1

    :cond_14
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v17, v4, v3

    aput-object v14, v4, v43

    aput-object v16, v4, v42

    aput-object v15, v4, v41

    aput-object v11, v4, v2

    aput-object v13, v4, v40

    const/4 v2, 0x7

    aput-object v10, v4, v2

    invoke-static {v4}, Lb1/a;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    :goto_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0d008c

    invoke-direct {v2, v0, v3, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x7f0d0102

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, v0, Lcom/mega/engineeringmode/function/channel/ChannelActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;

    if-eqz v3, :cond_18

    iget-object v3, v3, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;->c:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, v0, Lcom/mega/engineeringmode/function/channel/ChannelActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;

    if-eqz v2, :cond_17

    new-instance v3, Lcom/mega/engineeringmode/function/channel/ChannelActivity$a;

    invoke-direct {v3, v0, v1}, Lcom/mega/engineeringmode/function/channel/ChannelActivity$a;-><init>(Lcom/mega/engineeringmode/function/channel/ChannelActivity;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;->c:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "country = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", selectChannel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChannelActivity"

    invoke-static {v3, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    iget-object v0, v0, Lcom/mega/engineeringmode/function/channel/ChannelActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;->c:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_2

    :cond_15
    invoke-static {v6}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_16
    :goto_2
    return-void

    :cond_17
    const/4 v0, 0x0

    invoke-static {v6}, Lo3/h;->j(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x0

    invoke-static {v6}, Lo3/h;->j(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v0, v4

    invoke-static {v6}, Lo3/h;->j(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x45f8e7ff -> :sswitch_1b
        -0x45f8e7e1 -> :sswitch_1a
        -0x45f8e43f -> :sswitch_19
        -0x45f8e43e -> :sswitch_18
        -0x45f8e420 -> :sswitch_17
        -0x45f8e41f -> :sswitch_16
        -0x45f873a1 -> :sswitch_15
        -0x45f873a0 -> :sswitch_14
        -0x45f86fdf -> :sswitch_13
        -0x45f86fc0 -> :sswitch_12
        -0x45ead07f -> :sswitch_11
        -0x45ead07e -> :sswitch_10
        -0x45ead05f -> :sswitch_f
        -0x45eaccbd -> :sswitch_e
        -0x45ea585f -> :sswitch_d
        -0x45ea585e -> :sswitch_c
        -0x44440f61 -> :sswitch_b
        -0x44440f42 -> :sswitch_a
        -0x44440ba0 -> :sswitch_9
        -0x44440b9f -> :sswitch_8
        -0x44440b80 -> :sswitch_7
        -0x44439b02 -> :sswitch_6
        -0x44439ae2 -> :sswitch_5
        -0x44439722 -> :sswitch_4
        -0x44439721 -> :sswitch_3
        -0x4435f7df -> :sswitch_2
        -0x4435f41e -> :sswitch_1
        -0x44358381 -> :sswitch_0
    .end sparse-switch
.end method
