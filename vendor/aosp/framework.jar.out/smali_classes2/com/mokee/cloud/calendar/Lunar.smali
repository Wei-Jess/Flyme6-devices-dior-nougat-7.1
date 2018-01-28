.class public Lcom/mokee/cloud/calendar/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# static fields
.field private static l:[Ljava/lang/String;

.field private static m:[Ljava/lang/String;

.field private static final o:[J

.field private static p:[I

.field private static final q:[Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private n:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v13, 0x96

    const/16 v12, 0x88

    const/16 v11, 0x78

    const/16 v10, 0xa5

    const/16 v9, 0x87

    const/16 v0, 0x42

    new-array v7, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v3, "\u96a7\u6c29\u0002\u861a\u668c\t\u6b2c\u6715\u529e\u4ee2$\u8fdf\u66ba\u65ff\u5e69\u0002\u5252\u535c\u0008\u5124\u6715\u53c2\u4e76$\u4e40\u79b7\u82cd\u0002\u4e46\u535c\u0008\u4e12\u6715\u529e\u4ebf$\u91a0\u964f\u82cd\u0002\u594b\u668c\u0002\u4ec3\u535c\u0002\u5968\u96f7\u0007\u8105\u6715\u5e7c\u4eeb$\u5c62\u5e08\u0002\u5c40\u96f7\u0008\u4e4c\u6715\u53c2\u4e76$\u4e40\u513f\u7b8f\u0008\u6b2c\u6715\u529e\u4e6e$\u8ea7\u5110\u8ada\u0002\u7a84\u6638\u0008\u4edb\u6715\u529e\u4e76$\u7a82\u5334\u7b8f\u0002\u6085\u86ed\u0008\u4e46\u6715\u5e7c\u4eeb$\u5944\u5472\u8ada\u0002\u9753\u9650\u0008\u5124\u6715\u53c2\u4e76$\u4e40\u79b7\u7b8f\u0007\u8105\u6715\u5e7c\u4ebf$\u9609\u5969\u0002\u5968\u668c\u0002\u7a0f\u96f5\u0002\u001bJ\u0002\u5c40\u6efc\u0002\u5968\u5bcf\u0007\u6b2c\u6715\u529e\u4ee2$\u6648\u7bbc\u0008\u6b2c\u6715\u53c2\u4e76$\u512e\u5bc9\u82cd\u0002\u530e\u4e1d\u0002\u000cS\u0008\u4edb\u6715\u529e\u4e76$\u7a82\u5334\u82cd\u0008\u4e4c\u6715\u53c2\u4e76$\u76af\u8651\u7b8f\u0002\u82dd\u7a33\u0002\u7a84\u79d6\u0002\u5c40\u6ee2\u000b6d\u00fa\u009b\u5e70 1\u6747y\u00e7\u6507\u0007\u8197\u6715\u5e7c\u518f$\u5c53\u7225\u0002\u5c40\u668c\u0002\u5b9d\u972f\n~$\u00b3\u00d2\u5e70\\\u6774|,\u6566\u0008\u6b2c\u6715\u529e\u4ebf$\u5944\u5110\u7550\u0002\u9a15\u87d9\u0008\u4e4c\u6715\u529e\u4ee1$\u4e6e\u5969\u82cd\u0007\u8105\u6715\u4e8a\u53a3$\u9609\u5969\u0002\u6e4a\u6613\u0002\u51e3\u81ee\u0002\u7632\u972f\u0002\u0007V\u0002\u666a\u521b\u0002\u5940\u81ee\u0007\u5694\u6715\u529e\u5189$\u4f36\u8ae9\u0008\u8105\u6715\u529e\u5189$\u8127\u5117\u82cd\u0002\u530e\u4e91\u0002\u7a84\u51b1\u0008\u6b2c\u6715\u53c2\u4e76$\u512e\u5bc9\u7b8f\u0007\u4e4c\u6715\u529e\u4ee1$\u4e6e\u5969\u0007\u6b2c\u6715\u529e\u4ee2$\u6648\u82fe\u0002\u82dd\u79d0\u0002\u7984\u521b\u0002\u7a84\u5912\u0002\u5c40\u5bcf\u0008\u4e12\u6715\u529e\u4ebf$\u91a0\u9601\u7b8f\u0008\u4ec3\u6715\u529e\u4e6e$\u9ff4\u62d0\u597b\u0007\u4ec3\u6715\u529e\u4e6e$\u9840\u7225"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x2

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v5, v0, 0x1

    add-int v0, v5, v1

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    move v14, v5

    move v5, v1

    move v1, v14

    move v15, v4

    move-object v4, v6

    move v6, v15

    :goto_1
    invoke-static {v4}, Lcom/mokee/cloud/calendar/Lunar;->a(Ljava/lang/String;)[C

    move-result-object v4

    invoke-static {v4}, Lcom/mokee/cloud/calendar/Lunar;->a([C)Ljava/lang/String;

    move-result-object v8

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v4, v6, 0x1

    aput-object v8, v7, v6

    add-int v0, v1, v5

    if-lt v0, v2, :cond_0

    const-string/jumbo v3, "\u8c78\u96f5\u0008\u4e4c\u6715\u53c2\u4e76$\u4e40\u513f\u82cd"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x2

    const/4 v0, -0x1

    :goto_2
    add-int/lit8 v5, v0, 0x1

    add-int v0, v5, v1

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    move v14, v5

    move v5, v1

    move v1, v14

    move v15, v4

    move-object v4, v6

    move v6, v15

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v4, v6, 0x1

    aput-object v8, v7, v6

    add-int v0, v1, v5

    if-lt v0, v2, :cond_1

    sput-object v7, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    new-array v0, v13, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x4bd8

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x4ae0

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/32 v2, 0xa570

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x54d5

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide/32 v2, 0xd260

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    const-wide/32 v2, 0xd950

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide/32 v2, 0x16554

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide/16 v2, 0x56a0

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide/32 v2, 0x9ad0

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide/16 v2, 0x55d2

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide/16 v2, 0x4ae0

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide/32 v2, 0xa5b6

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide/32 v2, 0xa4d0

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide/32 v2, 0xd250

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide/32 v2, 0x1d255

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide/32 v2, 0xb540

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide/32 v2, 0xd6a0

    aput-wide v2, v0, v1

    const/16 v1, 0x11

    const-wide/32 v2, 0xada2

    aput-wide v2, v0, v1

    const/16 v1, 0x12

    const-wide/32 v2, 0x95b0

    aput-wide v2, v0, v1

    const/16 v1, 0x13

    const-wide/32 v2, 0x14977

    aput-wide v2, v0, v1

    const/16 v1, 0x14

    const-wide/16 v2, 0x4970

    aput-wide v2, v0, v1

    const/16 v1, 0x15

    const-wide/32 v2, 0xa4b0

    aput-wide v2, v0, v1

    const/16 v1, 0x16

    const-wide/32 v2, 0xb4b5

    aput-wide v2, v0, v1

    const/16 v1, 0x17

    const-wide/16 v2, 0x6a50

    aput-wide v2, v0, v1

    const/16 v1, 0x18

    const-wide/16 v2, 0x6d40

    aput-wide v2, v0, v1

    const/16 v1, 0x19

    const-wide/32 v2, 0x1ab54

    aput-wide v2, v0, v1

    const/16 v1, 0x1a

    const-wide/16 v2, 0x2b60

    aput-wide v2, v0, v1

    const/16 v1, 0x1b

    const-wide/32 v2, 0x9570

    aput-wide v2, v0, v1

    const/16 v1, 0x1c

    const-wide/16 v2, 0x52f2

    aput-wide v2, v0, v1

    const/16 v1, 0x1d

    const-wide/16 v2, 0x4970

    aput-wide v2, v0, v1

    const/16 v1, 0x1e

    const-wide/16 v2, 0x6566

    aput-wide v2, v0, v1

    const/16 v1, 0x1f

    const-wide/32 v2, 0xd4a0

    aput-wide v2, v0, v1

    const/16 v1, 0x20

    const-wide/32 v2, 0xea50

    aput-wide v2, v0, v1

    const/16 v1, 0x21

    const-wide/16 v2, 0x6e95

    aput-wide v2, v0, v1

    const/16 v1, 0x22

    const-wide/16 v2, 0x5ad0

    aput-wide v2, v0, v1

    const/16 v1, 0x23

    const-wide/16 v2, 0x2b60

    aput-wide v2, v0, v1

    const/16 v1, 0x24

    const-wide/32 v2, 0x186e3

    aput-wide v2, v0, v1

    const/16 v1, 0x25

    const-wide/32 v2, 0x92e0

    aput-wide v2, v0, v1

    const/16 v1, 0x26

    const-wide/32 v2, 0x1c8d7

    aput-wide v2, v0, v1

    const/16 v1, 0x27

    const-wide/32 v2, 0xc950

    aput-wide v2, v0, v1

    const/16 v1, 0x28

    const-wide/32 v2, 0xd4a0

    aput-wide v2, v0, v1

    const/16 v1, 0x29

    const-wide/32 v2, 0x1d8a6

    aput-wide v2, v0, v1

    const/16 v1, 0x2a

    const-wide/32 v2, 0xb550

    aput-wide v2, v0, v1

    const/16 v1, 0x2b

    const-wide/16 v2, 0x56a0

    aput-wide v2, v0, v1

    const/16 v1, 0x2c

    const-wide/32 v2, 0x1a5b4

    aput-wide v2, v0, v1

    const/16 v1, 0x2d

    const-wide/16 v2, 0x25d0

    aput-wide v2, v0, v1

    const/16 v1, 0x2e

    const-wide/32 v2, 0x92d0

    aput-wide v2, v0, v1

    const/16 v1, 0x2f

    const-wide/32 v2, 0xd2b2

    aput-wide v2, v0, v1

    const/16 v1, 0x30

    const-wide/32 v2, 0xa950

    aput-wide v2, v0, v1

    const/16 v1, 0x31

    const-wide/32 v2, 0xb557

    aput-wide v2, v0, v1

    const/16 v1, 0x32

    const-wide/16 v2, 0x6ca0

    aput-wide v2, v0, v1

    const/16 v1, 0x33

    const-wide/32 v2, 0xb550

    aput-wide v2, v0, v1

    const/16 v1, 0x34

    const-wide/32 v2, 0x15355

    aput-wide v2, v0, v1

    const/16 v1, 0x35

    const-wide/16 v2, 0x4da0

    aput-wide v2, v0, v1

    const/16 v1, 0x36

    const-wide/32 v2, 0xa5d0

    aput-wide v2, v0, v1

    const/16 v1, 0x37

    const-wide/32 v2, 0x14573

    aput-wide v2, v0, v1

    const/16 v1, 0x38

    const-wide/16 v2, 0x52d0

    aput-wide v2, v0, v1

    const/16 v1, 0x39

    const-wide/32 v2, 0xa9a8

    aput-wide v2, v0, v1

    const/16 v1, 0x3a

    const-wide/32 v2, 0xe950

    aput-wide v2, v0, v1

    const/16 v1, 0x3b

    const-wide/16 v2, 0x6aa0

    aput-wide v2, v0, v1

    const/16 v1, 0x3c

    const-wide/32 v2, 0xaea6

    aput-wide v2, v0, v1

    const/16 v1, 0x3d

    const-wide/32 v2, 0xab50

    aput-wide v2, v0, v1

    const/16 v1, 0x3e

    const-wide/16 v2, 0x4b60

    aput-wide v2, v0, v1

    const/16 v1, 0x3f

    const-wide/32 v2, 0xaae4

    aput-wide v2, v0, v1

    const/16 v1, 0x40

    const-wide/32 v2, 0xa570

    aput-wide v2, v0, v1

    const/16 v1, 0x41

    const-wide/16 v2, 0x5260

    aput-wide v2, v0, v1

    const/16 v1, 0x42

    const-wide/32 v2, 0xf263

    aput-wide v2, v0, v1

    const/16 v1, 0x43

    const-wide/32 v2, 0xd950

    aput-wide v2, v0, v1

    const/16 v1, 0x44

    const-wide/16 v2, 0x5b57

    aput-wide v2, v0, v1

    const/16 v1, 0x45

    const-wide/16 v2, 0x56a0

    aput-wide v2, v0, v1

    const/16 v1, 0x46

    const-wide/32 v2, 0x96d0

    aput-wide v2, v0, v1

    const/16 v1, 0x47

    const-wide/16 v2, 0x4dd5

    aput-wide v2, v0, v1

    const/16 v1, 0x48

    const-wide/16 v2, 0x4ad0

    aput-wide v2, v0, v1

    const/16 v1, 0x49

    const-wide/32 v2, 0xa4d0

    aput-wide v2, v0, v1

    const/16 v1, 0x4a

    const-wide/32 v2, 0xd4d4

    aput-wide v2, v0, v1

    const/16 v1, 0x4b

    const-wide/32 v2, 0xd250

    aput-wide v2, v0, v1

    const/16 v1, 0x4c

    const-wide/32 v2, 0xd558

    aput-wide v2, v0, v1

    const/16 v1, 0x4d

    const-wide/32 v2, 0xb540

    aput-wide v2, v0, v1

    const/16 v1, 0x4e

    const-wide/32 v2, 0xb5a0

    aput-wide v2, v0, v1

    const/16 v1, 0x4f

    const-wide/32 v2, 0x195a6

    aput-wide v2, v0, v1

    const/16 v1, 0x50

    const-wide/32 v2, 0x95b0

    aput-wide v2, v0, v1

    const/16 v1, 0x51

    const-wide/16 v2, 0x49b0

    aput-wide v2, v0, v1

    const/16 v1, 0x52

    const-wide/32 v2, 0xa974

    aput-wide v2, v0, v1

    const/16 v1, 0x53

    const-wide/32 v2, 0xa4b0

    aput-wide v2, v0, v1

    const/16 v1, 0x54

    const-wide/32 v2, 0xb27a

    aput-wide v2, v0, v1

    const/16 v1, 0x55

    const-wide/16 v2, 0x6a50

    aput-wide v2, v0, v1

    const/16 v1, 0x56

    const-wide/16 v2, 0x6d40

    aput-wide v2, v0, v1

    const/16 v1, 0x57

    const-wide/32 v2, 0xaf46

    aput-wide v2, v0, v1

    const/16 v1, 0x58

    const-wide/32 v2, 0xab60

    aput-wide v2, v0, v1

    const/16 v1, 0x59

    const-wide/32 v2, 0x9570

    aput-wide v2, v0, v1

    const/16 v1, 0x5a

    const-wide/16 v2, 0x4af5

    aput-wide v2, v0, v1

    const/16 v1, 0x5b

    const-wide/16 v2, 0x4970

    aput-wide v2, v0, v1

    const/16 v1, 0x5c

    const-wide/16 v2, 0x64b0

    aput-wide v2, v0, v1

    const/16 v1, 0x5d

    const-wide/16 v2, 0x74a3

    aput-wide v2, v0, v1

    const/16 v1, 0x5e

    const-wide/32 v2, 0xea50

    aput-wide v2, v0, v1

    const/16 v1, 0x5f

    const-wide/16 v2, 0x6b58

    aput-wide v2, v0, v1

    const/16 v1, 0x60

    const-wide/16 v2, 0x55c0

    aput-wide v2, v0, v1

    const/16 v1, 0x61

    const-wide/32 v2, 0xab60

    aput-wide v2, v0, v1

    const/16 v1, 0x62

    const-wide/32 v2, 0x96d5

    aput-wide v2, v0, v1

    const/16 v1, 0x63

    const-wide/32 v2, 0x92e0

    aput-wide v2, v0, v1

    const/16 v1, 0x64

    const-wide/32 v2, 0xc960

    aput-wide v2, v0, v1

    const/16 v1, 0x65

    const-wide/32 v2, 0xd954

    aput-wide v2, v0, v1

    const/16 v1, 0x66

    const-wide/32 v2, 0xd4a0

    aput-wide v2, v0, v1

    const/16 v1, 0x67

    const-wide/32 v2, 0xda50

    aput-wide v2, v0, v1

    const/16 v1, 0x68

    const-wide/16 v2, 0x7552

    aput-wide v2, v0, v1

    const/16 v1, 0x69

    const-wide/16 v2, 0x56a0

    aput-wide v2, v0, v1

    const/16 v1, 0x6a

    const-wide/32 v2, 0xabb7

    aput-wide v2, v0, v1

    const/16 v1, 0x6b

    const-wide/16 v2, 0x25d0

    aput-wide v2, v0, v1

    const/16 v1, 0x6c

    const-wide/32 v2, 0x92d0

    aput-wide v2, v0, v1

    const/16 v1, 0x6d

    const-wide/32 v2, 0xcab5

    aput-wide v2, v0, v1

    const/16 v1, 0x6e

    const-wide/32 v2, 0xa950

    aput-wide v2, v0, v1

    const/16 v1, 0x6f

    const-wide/32 v2, 0xb4a0

    aput-wide v2, v0, v1

    const/16 v1, 0x70

    const-wide/32 v2, 0xbaa4

    aput-wide v2, v0, v1

    const/16 v1, 0x71

    const-wide/32 v2, 0xad50

    aput-wide v2, v0, v1

    const/16 v1, 0x72

    const-wide/16 v2, 0x55d9

    aput-wide v2, v0, v1

    const/16 v1, 0x73

    const-wide/16 v2, 0x4ba0

    aput-wide v2, v0, v1

    const/16 v1, 0x74

    const-wide/32 v2, 0xa5b0

    aput-wide v2, v0, v1

    const/16 v1, 0x75

    const-wide/32 v2, 0x15176

    aput-wide v2, v0, v1

    const/16 v1, 0x76

    const-wide/16 v2, 0x52b0

    aput-wide v2, v0, v1

    const/16 v1, 0x77

    const-wide/32 v2, 0xa930

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x7954

    aput-wide v2, v0, v11

    const/16 v1, 0x79

    const-wide/16 v2, 0x6aa0

    aput-wide v2, v0, v1

    const/16 v1, 0x7a

    const-wide/32 v2, 0xad50

    aput-wide v2, v0, v1

    const/16 v1, 0x7b

    const-wide/16 v2, 0x5b52

    aput-wide v2, v0, v1

    const/16 v1, 0x7c

    const-wide/16 v2, 0x4b60

    aput-wide v2, v0, v1

    const/16 v1, 0x7d

    const-wide/32 v2, 0xa6e6

    aput-wide v2, v0, v1

    const/16 v1, 0x7e

    const-wide/32 v2, 0xa4e0

    aput-wide v2, v0, v1

    const/16 v1, 0x7f

    const-wide/32 v2, 0xd260

    aput-wide v2, v0, v1

    const/16 v1, 0x80

    const-wide/32 v2, 0xea65

    aput-wide v2, v0, v1

    const/16 v1, 0x81

    const-wide/32 v2, 0xd530

    aput-wide v2, v0, v1

    const/16 v1, 0x82

    const-wide/16 v2, 0x5aa0

    aput-wide v2, v0, v1

    const/16 v1, 0x83

    const-wide/16 v2, 0x76a3

    aput-wide v2, v0, v1

    const/16 v1, 0x84

    const-wide/32 v2, 0x96d0

    aput-wide v2, v0, v1

    const/16 v1, 0x85

    const-wide/16 v2, 0x4bd7

    aput-wide v2, v0, v1

    const/16 v1, 0x86

    const-wide/16 v2, 0x4ad0

    aput-wide v2, v0, v1

    const-wide/32 v2, 0xa4d0

    aput-wide v2, v0, v9

    const-wide/32 v2, 0x1d0b6

    aput-wide v2, v0, v12

    const/16 v1, 0x89

    const-wide/32 v2, 0xd250

    aput-wide v2, v0, v1

    const/16 v1, 0x8a

    const-wide/32 v2, 0xd520

    aput-wide v2, v0, v1

    const/16 v1, 0x8b

    const-wide/32 v2, 0xdd45

    aput-wide v2, v0, v1

    const/16 v1, 0x8c

    const-wide/32 v2, 0xb5a0

    aput-wide v2, v0, v1

    const/16 v1, 0x8d

    const-wide/16 v2, 0x56d0

    aput-wide v2, v0, v1

    const/16 v1, 0x8e

    const-wide/16 v2, 0x55b2

    aput-wide v2, v0, v1

    const/16 v1, 0x8f

    const-wide/16 v2, 0x49b0

    aput-wide v2, v0, v1

    const/16 v1, 0x90

    const-wide/32 v2, 0xa577

    aput-wide v2, v0, v1

    const/16 v1, 0x91

    const-wide/32 v2, 0xa4b0

    aput-wide v2, v0, v1

    const/16 v1, 0x92

    const-wide/32 v2, 0xaa50

    aput-wide v2, v0, v1

    const/16 v1, 0x93

    const-wide/32 v2, 0x1b255

    aput-wide v2, v0, v1

    const/16 v1, 0x94

    const-wide/16 v2, 0x6d20

    aput-wide v2, v0, v1

    const/16 v1, 0x95

    const-wide/32 v2, 0xada0

    aput-wide v2, v0, v1

    sput-object v0, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    const/16 v0, 0x3cc

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x95

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v13, v0, v1

    const/4 v1, 0x3

    aput v10, v0, v1

    const/4 v1, 0x4

    aput v13, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x97

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v12, v0, v1

    const/4 v1, 0x7

    aput v11, v0, v1

    const/16 v1, 0x8

    aput v11, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v11, v0, v1

    const/16 v1, 0xb

    aput v9, v0, v1

    const/16 v1, 0xc

    aput v13, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v13, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v11, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v11, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x18

    aput v13, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xa4

    aput v2, v0, v1

    const/16 v1, 0x1a

    aput v10, v0, v1

    const/16 v1, 0x1b

    aput v10, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1e

    aput v12, v0, v1

    const/16 v1, 0x1f

    aput v12, v0, v1

    const/16 v1, 0x20

    aput v12, v0, v1

    const/16 v1, 0x21

    aput v11, v0, v1

    const/16 v1, 0x22

    aput v9, v0, v1

    const/16 v1, 0x23

    aput v9, v0, v1

    const/16 v1, 0x24

    aput v10, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x26

    aput v13, v0, v1

    const/16 v1, 0x27

    aput v10, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x29

    aput v13, v0, v1

    const/16 v1, 0x2a

    aput v12, v0, v1

    const/16 v1, 0x2b

    aput v11, v0, v1

    const/16 v1, 0x2c

    aput v11, v0, v1

    const/16 v1, 0x2d

    aput v11, v0, v1

    const/16 v1, 0x2e

    aput v9, v0, v1

    const/16 v1, 0x2f

    aput v9, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x32

    aput v13, v0, v1

    const/16 v1, 0x33

    aput v10, v0, v1

    const/16 v1, 0x34

    aput v13, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x36

    aput v12, v0, v1

    const/16 v1, 0x37

    aput v11, v0, v1

    const/16 v1, 0x38

    aput v11, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x3a

    aput v11, v0, v1

    const/16 v1, 0x3b

    aput v9, v0, v1

    const/16 v1, 0x3c

    aput v13, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x3e

    aput v13, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x42

    aput v11, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x44

    aput v11, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x46

    aput v11, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x48

    aput v13, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xa4

    aput v2, v0, v1

    const/16 v1, 0x4a

    aput v10, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x4e

    aput v12, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x89

    aput v2, v0, v1

    const/16 v1, 0x50

    aput v12, v0, v1

    const/16 v1, 0x51

    aput v11, v0, v1

    const/16 v1, 0x52

    aput v9, v0, v1

    const/16 v1, 0x53

    aput v9, v0, v1

    const/16 v1, 0x54

    aput v10, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x56

    aput v13, v0, v1

    const/16 v1, 0x57

    aput v10, v0, v1

    const/16 v1, 0x58

    aput v13, v0, v1

    const/16 v1, 0x59

    aput v13, v0, v1

    const/16 v1, 0x5a

    aput v12, v0, v1

    const/16 v1, 0x5b

    aput v12, v0, v1

    const/16 v1, 0x5c

    aput v11, v0, v1

    const/16 v1, 0x5d

    aput v11, v0, v1

    const/16 v1, 0x5e

    aput v9, v0, v1

    const/16 v1, 0x5f

    aput v9, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x62

    aput v13, v0, v1

    const/16 v1, 0x63

    aput v10, v0, v1

    const/16 v1, 0x64

    aput v13, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x66

    aput v12, v0, v1

    const/16 v1, 0x67

    aput v11, v0, v1

    const/16 v1, 0x68

    aput v11, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x6a

    aput v11, v0, v1

    const/16 v1, 0x6b

    aput v9, v0, v1

    const/16 v1, 0x6c

    aput v13, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x6e

    aput v13, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x70

    aput v13, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x72

    aput v11, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x74

    aput v11, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x76

    aput v11, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x77

    aput v2, v0, v1

    aput v13, v0, v11

    const/16 v1, 0x79

    const/16 v2, 0xa4

    aput v2, v0, v1

    const/16 v1, 0x7a

    aput v10, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x7e

    aput v12, v0, v1

    const/16 v1, 0x7f

    aput v12, v0, v1

    const/16 v1, 0x80

    aput v12, v0, v1

    const/16 v1, 0x81

    aput v11, v0, v1

    const/16 v1, 0x82

    aput v9, v0, v1

    const/16 v1, 0x83

    aput v9, v0, v1

    const/16 v1, 0x84

    aput v10, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x86

    aput v13, v0, v1

    aput v10, v0, v9

    const/16 v1, 0xa6

    aput v1, v0, v12

    const/16 v1, 0x89

    aput v13, v0, v1

    const/16 v1, 0x8a

    aput v12, v0, v1

    const/16 v1, 0x8b

    aput v12, v0, v1

    const/16 v1, 0x8c

    aput v11, v0, v1

    const/16 v1, 0x8d

    aput v11, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x8f

    aput v9, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x92

    aput v13, v0, v1

    const/16 v1, 0x93

    aput v10, v0, v1

    const/16 v1, 0x94

    aput v13, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x97

    aput v2, v0, v1

    aput v12, v0, v13

    const/16 v1, 0x97

    aput v11, v0, v1

    const/16 v1, 0x98

    aput v11, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x9b

    aput v9, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x9e

    aput v13, v0, v1

    const/16 v1, 0x9f

    aput v10, v0, v1

    const/16 v1, 0xa0

    aput v13, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0xa2

    aput v11, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0xa4

    aput v11, v0, v1

    const/16 v1, 0x69

    aput v1, v0, v10

    const/16 v1, 0xa6

    aput v11, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0xa8

    aput v13, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xaa

    aput v10, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0xae

    aput v9, v0, v1

    const/16 v1, 0xaf

    aput v12, v0, v1

    const/16 v1, 0xb0

    aput v12, v0, v1

    const/16 v1, 0xb1

    aput v11, v0, v1

    const/16 v1, 0xb2

    aput v9, v0, v1

    const/16 v1, 0xb3

    aput v9, v0, v1

    const/16 v1, 0xb4

    aput v10, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0xb7

    aput v10, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0xb9

    aput v13, v0, v1

    const/16 v1, 0xba

    aput v12, v0, v1

    const/16 v1, 0xbb

    aput v12, v0, v1

    const/16 v1, 0xbc

    aput v11, v0, v1

    const/16 v1, 0xbd

    aput v11, v0, v1

    const/16 v1, 0xbe

    aput v9, v0, v1

    const/16 v1, 0xbf

    aput v9, v0, v1

    const/16 v1, 0xc0

    aput v10, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xc2

    aput v13, v0, v1

    const/16 v1, 0xc3

    aput v10, v0, v1

    const/16 v1, 0xc4

    aput v13, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0xc6

    aput v12, v0, v1

    const/16 v1, 0xc7

    aput v11, v0, v1

    const/16 v1, 0xc8

    aput v11, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0xcb

    aput v9, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xce

    aput v13, v0, v1

    const/16 v1, 0xcf

    aput v10, v0, v1

    const/16 v1, 0xd0

    aput v13, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0xd2

    aput v12, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0xd4

    aput v11, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0xd6

    aput v11, v0, v1

    const/16 v1, 0xd7

    aput v9, v0, v1

    const/16 v1, 0xd8

    aput v13, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xda

    aput v10, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0xde

    aput v9, v0, v1

    const/16 v1, 0xdf

    aput v12, v0, v1

    const/16 v1, 0xe0

    aput v12, v0, v1

    const/16 v1, 0xe1

    aput v11, v0, v1

    const/16 v1, 0xe2

    aput v9, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0xe4

    aput v10, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xe6

    aput v10, v0, v1

    const/16 v1, 0xe7

    aput v10, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0xe9

    aput v13, v0, v1

    const/16 v1, 0xea

    aput v12, v0, v1

    const/16 v1, 0xeb

    aput v12, v0, v1

    const/16 v1, 0xec

    aput v12, v0, v1

    const/16 v1, 0xed

    aput v11, v0, v1

    const/16 v1, 0xee

    aput v9, v0, v1

    const/16 v1, 0xef

    aput v9, v0, v1

    const/16 v1, 0xf0

    aput v10, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xf2

    aput v13, v0, v1

    const/16 v1, 0xf3

    aput v10, v0, v1

    const/16 v1, 0xf4

    aput v13, v0, v1

    const/16 v1, 0xf5

    aput v13, v0, v1

    const/16 v1, 0xf6

    aput v12, v0, v1

    const/16 v1, 0xf7

    aput v11, v0, v1

    const/16 v1, 0xf8

    aput v11, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0xfb

    aput v9, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xfe

    aput v13, v0, v1

    const/16 v1, 0xff

    aput v10, v0, v1

    const/16 v1, 0x100

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x101

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x102

    aput v12, v0, v1

    const/16 v1, 0x103

    aput v11, v0, v1

    const/16 v1, 0x104

    aput v11, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x106

    aput v11, v0, v1

    const/16 v1, 0x107

    aput v9, v0, v1

    const/16 v1, 0x108

    aput v13, v0, v1

    const/16 v1, 0x109

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x10a

    aput v10, v0, v1

    const/16 v1, 0x10b

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x10c

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x10e

    aput v9, v0, v1

    const/16 v1, 0x10f

    aput v12, v0, v1

    const/16 v1, 0x110

    aput v12, v0, v1

    const/16 v1, 0x111

    aput v11, v0, v1

    const/16 v1, 0x112

    aput v9, v0, v1

    const/16 v1, 0x113

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x114

    aput v10, v0, v1

    const/16 v1, 0x115

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x116

    aput v10, v0, v1

    const/16 v1, 0x117

    aput v10, v0, v1

    const/16 v1, 0x118

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x119

    aput v13, v0, v1

    const/16 v1, 0x11a

    aput v12, v0, v1

    const/16 v1, 0x11b

    aput v12, v0, v1

    const/16 v1, 0x11c

    aput v12, v0, v1

    const/16 v1, 0x11d

    aput v11, v0, v1

    const/16 v1, 0x11e

    aput v9, v0, v1

    const/16 v1, 0x11f

    aput v9, v0, v1

    const/16 v1, 0x120

    aput v10, v0, v1

    const/16 v1, 0x121

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x122

    aput v13, v0, v1

    const/16 v1, 0x123

    aput v10, v0, v1

    const/16 v1, 0x124

    aput v13, v0, v1

    const/16 v1, 0x125

    aput v13, v0, v1

    const/16 v1, 0x126

    aput v12, v0, v1

    const/16 v1, 0x127

    aput v11, v0, v1

    const/16 v1, 0x128

    aput v11, v0, v1

    const/16 v1, 0x129

    aput v11, v0, v1

    const/16 v1, 0x12a

    aput v9, v0, v1

    const/16 v1, 0x12b

    aput v9, v0, v1

    const/16 v1, 0x12c

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x12d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x12e

    aput v13, v0, v1

    const/16 v1, 0x12f

    aput v10, v0, v1

    const/16 v1, 0x130

    aput v13, v0, v1

    const/16 v1, 0x131

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x132

    aput v12, v0, v1

    const/16 v1, 0x133

    const/16 v2, 0x76

    aput v2, v0, v1

    const/16 v1, 0x134

    aput v11, v0, v1

    const/16 v1, 0x135

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x136

    aput v11, v0, v1

    const/16 v1, 0x137

    aput v9, v0, v1

    const/16 v1, 0x138

    aput v13, v0, v1

    const/16 v1, 0x139

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x13a

    aput v10, v0, v1

    const/16 v1, 0x13b

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x13c

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x13d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x13e

    aput v9, v0, v1

    const/16 v1, 0x13f

    aput v12, v0, v1

    const/16 v1, 0x140

    aput v12, v0, v1

    const/16 v1, 0x141

    aput v11, v0, v1

    const/16 v1, 0x142

    aput v9, v0, v1

    const/16 v1, 0x143

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x144

    aput v10, v0, v1

    const/16 v1, 0x145

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x146

    aput v10, v0, v1

    const/16 v1, 0x147

    aput v10, v0, v1

    const/16 v1, 0x148

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x149

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x14a

    aput v12, v0, v1

    const/16 v1, 0x14b

    aput v12, v0, v1

    const/16 v1, 0x14c

    aput v12, v0, v1

    const/16 v1, 0x14d

    aput v11, v0, v1

    const/16 v1, 0x14e

    aput v9, v0, v1

    const/16 v1, 0x14f

    aput v9, v0, v1

    const/16 v1, 0x150

    aput v10, v0, v1

    const/16 v1, 0x151

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x152

    aput v13, v0, v1

    const/16 v1, 0x153

    aput v10, v0, v1

    const/16 v1, 0x154

    aput v13, v0, v1

    const/16 v1, 0x155

    aput v13, v0, v1

    const/16 v1, 0x156

    aput v12, v0, v1

    const/16 v1, 0x157

    aput v11, v0, v1

    const/16 v1, 0x158

    aput v11, v0, v1

    const/16 v1, 0x159

    aput v11, v0, v1

    const/16 v1, 0x15a

    aput v9, v0, v1

    const/16 v1, 0x15b

    aput v9, v0, v1

    const/16 v1, 0x15c

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x15d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x15e

    aput v13, v0, v1

    const/16 v1, 0x15f

    aput v10, v0, v1

    const/16 v1, 0x160

    aput v13, v0, v1

    const/16 v1, 0x161

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x162

    aput v12, v0, v1

    const/16 v1, 0x163

    aput v11, v0, v1

    const/16 v1, 0x164

    aput v11, v0, v1

    const/16 v1, 0x165

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x166

    aput v11, v0, v1

    const/16 v1, 0x167

    aput v9, v0, v1

    const/16 v1, 0x168

    aput v13, v0, v1

    const/16 v1, 0x169

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x16a

    aput v10, v0, v1

    const/16 v1, 0x16b

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x16c

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x16d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x16e

    aput v9, v0, v1

    const/16 v1, 0x16f

    aput v12, v0, v1

    const/16 v1, 0x170

    aput v12, v0, v1

    const/16 v1, 0x171

    aput v11, v0, v1

    const/16 v1, 0x172

    aput v9, v0, v1

    const/16 v1, 0x173

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x174

    aput v10, v0, v1

    const/16 v1, 0x175

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x176

    aput v10, v0, v1

    const/16 v1, 0x177

    aput v10, v0, v1

    const/16 v1, 0x178

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x179

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x17a

    aput v12, v0, v1

    const/16 v1, 0x17b

    aput v12, v0, v1

    const/16 v1, 0x17c

    aput v12, v0, v1

    const/16 v1, 0x17d

    aput v11, v0, v1

    const/16 v1, 0x17e

    aput v9, v0, v1

    const/16 v1, 0x17f

    aput v9, v0, v1

    const/16 v1, 0x180

    aput v10, v0, v1

    const/16 v1, 0x181

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x182

    aput v13, v0, v1

    const/16 v1, 0x183

    aput v10, v0, v1

    const/16 v1, 0x184

    aput v13, v0, v1

    const/16 v1, 0x185

    aput v13, v0, v1

    const/16 v1, 0x186

    aput v12, v0, v1

    const/16 v1, 0x187

    aput v11, v0, v1

    const/16 v1, 0x188

    aput v11, v0, v1

    const/16 v1, 0x189

    aput v11, v0, v1

    const/16 v1, 0x18a

    aput v9, v0, v1

    const/16 v1, 0x18b

    aput v9, v0, v1

    const/16 v1, 0x18c

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x18d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x18e

    aput v13, v0, v1

    const/16 v1, 0x18f

    aput v10, v0, v1

    const/16 v1, 0x190

    aput v13, v0, v1

    const/16 v1, 0x191

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x192

    aput v12, v0, v1

    const/16 v1, 0x193

    aput v11, v0, v1

    const/16 v1, 0x194

    aput v11, v0, v1

    const/16 v1, 0x195

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x196

    aput v11, v0, v1

    const/16 v1, 0x197

    aput v9, v0, v1

    const/16 v1, 0x198

    aput v13, v0, v1

    const/16 v1, 0x199

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x19a

    aput v10, v0, v1

    const/16 v1, 0x19b

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x19c

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x19d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x19e

    aput v9, v0, v1

    const/16 v1, 0x19f

    aput v12, v0, v1

    const/16 v1, 0x1a0

    aput v12, v0, v1

    const/16 v1, 0x1a1

    aput v11, v0, v1

    const/16 v1, 0x1a2

    aput v9, v0, v1

    const/16 v1, 0x1a3

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x1a4

    aput v10, v0, v1

    const/16 v1, 0x1a5

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x1a6

    aput v10, v0, v1

    const/16 v1, 0x1a7

    aput v10, v0, v1

    const/16 v1, 0x1a8

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1a9

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1aa

    aput v12, v0, v1

    const/16 v1, 0x1ab

    aput v12, v0, v1

    const/16 v1, 0x1ac

    aput v12, v0, v1

    const/16 v1, 0x1ad

    aput v11, v0, v1

    const/16 v1, 0x1ae

    aput v9, v0, v1

    const/16 v1, 0x1af

    aput v9, v0, v1

    const/16 v1, 0x1b0

    aput v10, v0, v1

    const/16 v1, 0x1b1

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x1b2

    aput v13, v0, v1

    const/16 v1, 0x1b3

    aput v10, v0, v1

    const/16 v1, 0x1b4

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1b5

    aput v13, v0, v1

    const/16 v1, 0x1b6

    aput v12, v0, v1

    const/16 v1, 0x1b7

    aput v12, v0, v1

    const/16 v1, 0x1b8

    aput v11, v0, v1

    const/16 v1, 0x1b9

    aput v11, v0, v1

    const/16 v1, 0x1ba

    aput v9, v0, v1

    const/16 v1, 0x1bb

    aput v9, v0, v1

    const/16 v1, 0x1bc

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x1bd

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x1be

    aput v13, v0, v1

    const/16 v1, 0x1bf

    aput v10, v0, v1

    const/16 v1, 0x1c0

    aput v13, v0, v1

    const/16 v1, 0x1c1

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x1c2

    aput v12, v0, v1

    const/16 v1, 0x1c3

    aput v11, v0, v1

    const/16 v1, 0x1c4

    aput v11, v0, v1

    const/16 v1, 0x1c5

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x1c6

    aput v11, v0, v1

    const/16 v1, 0x1c7

    aput v9, v0, v1

    const/16 v1, 0x1c8

    aput v13, v0, v1

    const/16 v1, 0x1c9

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x1ca

    aput v10, v0, v1

    const/16 v1, 0x1cb

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x1cc

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1cd

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1ce

    aput v9, v0, v1

    const/16 v1, 0x1cf

    aput v12, v0, v1

    const/16 v1, 0x1d0

    aput v9, v0, v1

    const/16 v1, 0x1d1

    aput v11, v0, v1

    const/16 v1, 0x1d2

    aput v9, v0, v1

    const/16 v1, 0x1d3

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x1d4

    aput v10, v0, v1

    const/16 v1, 0x1d5

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x1d6

    aput v10, v0, v1

    const/16 v1, 0x1d7

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x1d8

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1d9

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1da

    aput v12, v0, v1

    const/16 v1, 0x1db

    aput v12, v0, v1

    const/16 v1, 0x1dc

    aput v12, v0, v1

    const/16 v1, 0x1dd

    aput v11, v0, v1

    const/16 v1, 0x1de

    aput v9, v0, v1

    const/16 v1, 0x1df

    aput v9, v0, v1

    const/16 v1, 0x1e0

    aput v10, v0, v1

    const/16 v1, 0x1e1

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x1e2

    aput v13, v0, v1

    const/16 v1, 0x1e3

    aput v10, v0, v1

    const/16 v1, 0x1e4

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1e5

    aput v13, v0, v1

    const/16 v1, 0x1e6

    aput v12, v0, v1

    const/16 v1, 0x1e7

    aput v12, v0, v1

    const/16 v1, 0x1e8

    aput v11, v0, v1

    const/16 v1, 0x1e9

    aput v11, v0, v1

    const/16 v1, 0x1ea

    aput v9, v0, v1

    const/16 v1, 0x1eb

    aput v9, v0, v1

    const/16 v1, 0x1ec

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x1ed

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x1ee

    aput v13, v0, v1

    const/16 v1, 0x1ef

    aput v10, v0, v1

    const/16 v1, 0x1f0

    aput v13, v0, v1

    const/16 v1, 0x1f1

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x1f2

    aput v12, v0, v1

    const/16 v1, 0x1f3

    aput v11, v0, v1

    const/16 v1, 0x1f4

    aput v11, v0, v1

    const/16 v1, 0x1f5

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x1f6

    aput v11, v0, v1

    const/16 v1, 0x1f7

    aput v9, v0, v1

    const/16 v1, 0x1f8

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x1f9

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x1fa

    aput v10, v0, v1

    const/16 v1, 0x1fb

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x1fc

    aput v10, v0, v1

    const/16 v1, 0x1fd

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x1fe

    aput v9, v0, v1

    const/16 v1, 0x1ff

    aput v12, v0, v1

    const/16 v1, 0x200

    aput v9, v0, v1

    const/16 v1, 0x201

    aput v11, v0, v1

    const/16 v1, 0x202

    aput v9, v0, v1

    const/16 v1, 0x203

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x204

    aput v10, v0, v1

    const/16 v1, 0x205

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x206

    aput v10, v0, v1

    const/16 v1, 0x207

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x208

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x209

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x20a

    aput v9, v0, v1

    const/16 v1, 0x20b

    aput v12, v0, v1

    const/16 v1, 0x20c

    aput v12, v0, v1

    const/16 v1, 0x20d

    aput v11, v0, v1

    const/16 v1, 0x20e

    aput v9, v0, v1

    const/16 v1, 0x20f

    aput v9, v0, v1

    const/16 v1, 0x210

    aput v10, v0, v1

    const/16 v1, 0x211

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x212

    aput v13, v0, v1

    const/16 v1, 0x213

    aput v10, v0, v1

    const/16 v1, 0x214

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x215

    aput v13, v0, v1

    const/16 v1, 0x216

    aput v12, v0, v1

    const/16 v1, 0x217

    aput v12, v0, v1

    const/16 v1, 0x218

    aput v11, v0, v1

    const/16 v1, 0x219

    aput v11, v0, v1

    const/16 v1, 0x21a

    aput v9, v0, v1

    const/16 v1, 0x21b

    aput v9, v0, v1

    const/16 v1, 0x21c

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x21d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x21e

    aput v13, v0, v1

    const/16 v1, 0x21f

    aput v10, v0, v1

    const/16 v1, 0x220

    aput v13, v0, v1

    const/16 v1, 0x221

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x222

    aput v12, v0, v1

    const/16 v1, 0x223

    aput v11, v0, v1

    const/16 v1, 0x224

    aput v11, v0, v1

    const/16 v1, 0x225

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x226

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x227

    aput v9, v0, v1

    const/16 v1, 0x228

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x229

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x22a

    aput v10, v0, v1

    const/16 v1, 0x22b

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x22c

    aput v10, v0, v1

    const/16 v1, 0x22d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x22e

    aput v9, v0, v1

    const/16 v1, 0x22f

    aput v12, v0, v1

    const/16 v1, 0x230

    aput v9, v0, v1

    const/16 v1, 0x231

    aput v11, v0, v1

    const/16 v1, 0x232

    aput v9, v0, v1

    const/16 v1, 0x233

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x234

    aput v10, v0, v1

    const/16 v1, 0x235

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x236

    aput v10, v0, v1

    const/16 v1, 0x237

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x238

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x239

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x23a

    aput v9, v0, v1

    const/16 v1, 0x23b

    aput v12, v0, v1

    const/16 v1, 0x23c

    aput v12, v0, v1

    const/16 v1, 0x23d

    aput v11, v0, v1

    const/16 v1, 0x23e

    aput v9, v0, v1

    const/16 v1, 0x23f

    aput v9, v0, v1

    const/16 v1, 0x240

    aput v10, v0, v1

    const/16 v1, 0x241

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x242

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x243

    aput v10, v0, v1

    const/16 v1, 0x244

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x245

    aput v13, v0, v1

    const/16 v1, 0x246

    aput v12, v0, v1

    const/16 v1, 0x247

    aput v12, v0, v1

    const/16 v1, 0x248

    aput v11, v0, v1

    const/16 v1, 0x249

    aput v11, v0, v1

    const/16 v1, 0x24a

    aput v9, v0, v1

    const/16 v1, 0x24b

    aput v9, v0, v1

    const/16 v1, 0x24c

    aput v10, v0, v1

    const/16 v1, 0x24d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x24e

    aput v13, v0, v1

    const/16 v1, 0x24f

    aput v10, v0, v1

    const/16 v1, 0x250

    aput v13, v0, v1

    const/16 v1, 0x251

    aput v13, v0, v1

    const/16 v1, 0x252

    aput v12, v0, v1

    const/16 v1, 0x253

    aput v11, v0, v1

    const/16 v1, 0x254

    aput v11, v0, v1

    const/16 v1, 0x255

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x256

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x257

    aput v9, v0, v1

    const/16 v1, 0x258

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x259

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x25a

    aput v10, v0, v1

    const/16 v1, 0x25b

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x25c

    aput v10, v0, v1

    const/16 v1, 0x25d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x25e

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x25f

    aput v9, v0, v1

    const/16 v1, 0x260

    aput v9, v0, v1

    const/16 v1, 0x261

    aput v11, v0, v1

    const/16 v1, 0x262

    aput v9, v0, v1

    const/16 v1, 0x263

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x264

    aput v10, v0, v1

    const/16 v1, 0x265

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x266

    aput v10, v0, v1

    const/16 v1, 0x267

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x268

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x269

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x26a

    aput v9, v0, v1

    const/16 v1, 0x26b

    aput v12, v0, v1

    const/16 v1, 0x26c

    aput v12, v0, v1

    const/16 v1, 0x26d

    aput v11, v0, v1

    const/16 v1, 0x26e

    aput v9, v0, v1

    const/16 v1, 0x26f

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x270

    aput v10, v0, v1

    const/16 v1, 0x271

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x272

    aput v10, v0, v1

    const/16 v1, 0x273

    aput v10, v0, v1

    const/16 v1, 0x274

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x275

    aput v13, v0, v1

    const/16 v1, 0x276

    aput v12, v0, v1

    const/16 v1, 0x277

    aput v12, v0, v1

    const/16 v1, 0x278

    aput v12, v0, v1

    const/16 v1, 0x279

    aput v11, v0, v1

    const/16 v1, 0x27a

    aput v9, v0, v1

    const/16 v1, 0x27b

    aput v9, v0, v1

    const/16 v1, 0x27c

    aput v10, v0, v1

    const/16 v1, 0x27d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x27e

    aput v13, v0, v1

    const/16 v1, 0x27f

    aput v10, v0, v1

    const/16 v1, 0x280

    aput v13, v0, v1

    const/16 v1, 0x281

    aput v13, v0, v1

    const/16 v1, 0x282

    aput v12, v0, v1

    const/16 v1, 0x283

    aput v11, v0, v1

    const/16 v1, 0x284

    aput v11, v0, v1

    const/16 v1, 0x285

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x286

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x287

    aput v9, v0, v1

    const/16 v1, 0x288

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x289

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x28a

    aput v10, v0, v1

    const/16 v1, 0x28b

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x28c

    aput v10, v0, v1

    const/16 v1, 0x28d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x28e

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x28f

    aput v9, v0, v1

    const/16 v1, 0x290

    aput v9, v0, v1

    const/16 v1, 0x291

    aput v11, v0, v1

    const/16 v1, 0x292

    aput v9, v0, v1

    const/16 v1, 0x293

    aput v13, v0, v1

    const/16 v1, 0x294

    aput v10, v0, v1

    const/16 v1, 0x295

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x296

    aput v10, v0, v1

    const/16 v1, 0x297

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x298

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x299

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x29a

    aput v9, v0, v1

    const/16 v1, 0x29b

    aput v12, v0, v1

    const/16 v1, 0x29c

    aput v12, v0, v1

    const/16 v1, 0x29d

    aput v11, v0, v1

    const/16 v1, 0x29e

    aput v9, v0, v1

    const/16 v1, 0x29f

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x2a0

    aput v10, v0, v1

    const/16 v1, 0x2a1

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x2a2

    aput v10, v0, v1

    const/16 v1, 0x2a3

    aput v10, v0, v1

    const/16 v1, 0x2a4

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2a5

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2a6

    aput v12, v0, v1

    const/16 v1, 0x2a7

    aput v12, v0, v1

    const/16 v1, 0x2a8

    aput v12, v0, v1

    const/16 v1, 0x2a9

    aput v11, v0, v1

    const/16 v1, 0x2aa

    aput v9, v0, v1

    const/16 v1, 0x2ab

    aput v9, v0, v1

    const/16 v1, 0x2ac

    aput v10, v0, v1

    const/16 v1, 0x2ad

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x2ae

    aput v13, v0, v1

    const/16 v1, 0x2af

    aput v10, v0, v1

    const/16 v1, 0x2b0

    aput v13, v0, v1

    const/16 v1, 0x2b1

    aput v13, v0, v1

    const/16 v1, 0x2b2

    aput v12, v0, v1

    const/16 v1, 0x2b3

    aput v11, v0, v1

    const/16 v1, 0x2b4

    aput v11, v0, v1

    const/16 v1, 0x2b5

    aput v11, v0, v1

    const/16 v1, 0x2b6

    aput v9, v0, v1

    const/16 v1, 0x2b7

    aput v9, v0, v1

    const/16 v1, 0x2b8

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x2b9

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x2ba

    aput v10, v0, v1

    const/16 v1, 0x2bb

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x2bc

    aput v10, v0, v1

    const/16 v1, 0x2bd

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2be

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x2bf

    aput v9, v0, v1

    const/16 v1, 0x2c0

    aput v9, v0, v1

    const/16 v1, 0x2c1

    aput v11, v0, v1

    const/16 v1, 0x2c2

    aput v9, v0, v1

    const/16 v1, 0x2c3

    aput v13, v0, v1

    const/16 v1, 0x2c4

    aput v10, v0, v1

    const/16 v1, 0x2c5

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x2c6

    aput v10, v0, v1

    const/16 v1, 0x2c7

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x2c8

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2c9

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2ca

    aput v9, v0, v1

    const/16 v1, 0x2cb

    aput v12, v0, v1

    const/16 v1, 0x2cc

    aput v12, v0, v1

    const/16 v1, 0x2cd

    aput v11, v0, v1

    const/16 v1, 0x2ce

    aput v9, v0, v1

    const/16 v1, 0x2cf

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x2d0

    aput v10, v0, v1

    const/16 v1, 0x2d1

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x2d2

    aput v10, v0, v1

    const/16 v1, 0x2d3

    aput v10, v0, v1

    const/16 v1, 0x2d4

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2d5

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2d6

    aput v12, v0, v1

    const/16 v1, 0x2d7

    aput v12, v0, v1

    const/16 v1, 0x2d8

    aput v12, v0, v1

    const/16 v1, 0x2d9

    aput v11, v0, v1

    const/16 v1, 0x2da

    aput v9, v0, v1

    const/16 v1, 0x2db

    aput v9, v0, v1

    const/16 v1, 0x2dc

    aput v10, v0, v1

    const/16 v1, 0x2dd

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x2de

    aput v13, v0, v1

    const/16 v1, 0x2df

    aput v10, v0, v1

    const/16 v1, 0x2e0

    aput v13, v0, v1

    const/16 v1, 0x2e1

    aput v13, v0, v1

    const/16 v1, 0x2e2

    aput v12, v0, v1

    const/16 v1, 0x2e3

    aput v11, v0, v1

    const/16 v1, 0x2e4

    aput v11, v0, v1

    const/16 v1, 0x2e5

    aput v11, v0, v1

    const/16 v1, 0x2e6

    aput v9, v0, v1

    const/16 v1, 0x2e7

    aput v9, v0, v1

    const/16 v1, 0x2e8

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x2e9

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x2ea

    aput v10, v0, v1

    const/16 v1, 0x2eb

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x2ec

    aput v10, v0, v1

    const/16 v1, 0x2ed

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2ee

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x2ef

    aput v9, v0, v1

    const/16 v1, 0x2f0

    aput v9, v0, v1

    const/16 v1, 0x2f1

    aput v11, v0, v1

    const/16 v1, 0x2f2

    aput v9, v0, v1

    const/16 v1, 0x2f3

    aput v13, v0, v1

    const/16 v1, 0x2f4

    aput v10, v0, v1

    const/16 v1, 0x2f5

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x2f6

    aput v10, v0, v1

    const/16 v1, 0x2f7

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x2f8

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2f9

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2fa

    aput v12, v0, v1

    const/16 v1, 0x2fb

    aput v12, v0, v1

    const/16 v1, 0x2fc

    aput v12, v0, v1

    const/16 v1, 0x2fd

    aput v11, v0, v1

    const/16 v1, 0x2fe

    aput v9, v0, v1

    const/16 v1, 0x2ff

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x300

    aput v10, v0, v1

    const/16 v1, 0x301

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x302

    aput v10, v0, v1

    const/16 v1, 0x303

    aput v10, v0, v1

    const/16 v1, 0x304

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x305

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x306

    aput v12, v0, v1

    const/16 v1, 0x307

    aput v11, v0, v1

    const/16 v1, 0x308

    aput v12, v0, v1

    const/16 v1, 0x309

    aput v11, v0, v1

    const/16 v1, 0x30a

    aput v9, v0, v1

    const/16 v1, 0x30b

    aput v9, v0, v1

    const/16 v1, 0x30c

    aput v10, v0, v1

    const/16 v1, 0x30d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x30e

    aput v13, v0, v1

    const/16 v1, 0x30f

    aput v10, v0, v1

    const/16 v1, 0x310

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x311

    aput v13, v0, v1

    const/16 v1, 0x312

    aput v12, v0, v1

    const/16 v1, 0x313

    aput v12, v0, v1

    const/16 v1, 0x314

    aput v11, v0, v1

    const/16 v1, 0x315

    aput v11, v0, v1

    const/16 v1, 0x316

    aput v9, v0, v1

    const/16 v1, 0x317

    aput v9, v0, v1

    const/16 v1, 0x318

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x319

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x31a

    aput v10, v0, v1

    const/16 v1, 0x31b

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x31c

    aput v10, v0, v1

    const/16 v1, 0x31d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x31e

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x31f

    aput v9, v0, v1

    const/16 v1, 0x320

    aput v9, v0, v1

    const/16 v1, 0x321

    aput v11, v0, v1

    const/16 v1, 0x322

    aput v9, v0, v1

    const/16 v1, 0x323

    aput v13, v0, v1

    const/16 v1, 0x324

    aput v10, v0, v1

    const/16 v1, 0x325

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x326

    aput v10, v0, v1

    const/16 v1, 0x327

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x328

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x329

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x32a

    aput v9, v0, v1

    const/16 v1, 0x32b

    aput v12, v0, v1

    const/16 v1, 0x32c

    aput v12, v0, v1

    const/16 v1, 0x32d

    aput v11, v0, v1

    const/16 v1, 0x32e

    aput v9, v0, v1

    const/16 v1, 0x32f

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x330

    aput v10, v0, v1

    const/16 v1, 0x331

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x332

    aput v10, v0, v1

    const/16 v1, 0x333

    aput v10, v0, v1

    const/16 v1, 0x334

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x335

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x336

    aput v12, v0, v1

    const/16 v1, 0x337

    aput v12, v0, v1

    const/16 v1, 0x338

    aput v12, v0, v1

    const/16 v1, 0x339

    aput v11, v0, v1

    const/16 v1, 0x33a

    aput v9, v0, v1

    const/16 v1, 0x33b

    aput v9, v0, v1

    const/16 v1, 0x33c

    aput v10, v0, v1

    const/16 v1, 0x33d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x33e

    aput v13, v0, v1

    const/16 v1, 0x33f

    aput v10, v0, v1

    const/16 v1, 0x340

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x341

    aput v13, v0, v1

    const/16 v1, 0x342

    aput v12, v0, v1

    const/16 v1, 0x343

    aput v12, v0, v1

    const/16 v1, 0x344

    aput v11, v0, v1

    const/16 v1, 0x345

    aput v11, v0, v1

    const/16 v1, 0x346

    aput v9, v0, v1

    const/16 v1, 0x347

    aput v9, v0, v1

    const/16 v1, 0x348

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x349

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x34a

    aput v10, v0, v1

    const/16 v1, 0x34b

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x34c

    aput v10, v0, v1

    const/16 v1, 0x34d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x34e

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x34f

    aput v9, v0, v1

    const/16 v1, 0x350

    aput v9, v0, v1

    const/16 v1, 0x351

    aput v11, v0, v1

    const/16 v1, 0x352

    aput v9, v0, v1

    const/16 v1, 0x353

    aput v13, v0, v1

    const/16 v1, 0x354

    aput v10, v0, v1

    const/16 v1, 0x355

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x356

    aput v10, v0, v1

    const/16 v1, 0x357

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x358

    aput v10, v0, v1

    const/16 v1, 0x359

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x35a

    aput v9, v0, v1

    const/16 v1, 0x35b

    aput v12, v0, v1

    const/16 v1, 0x35c

    aput v9, v0, v1

    const/16 v1, 0x35d

    aput v11, v0, v1

    const/16 v1, 0x35e

    aput v9, v0, v1

    const/16 v1, 0x35f

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x360

    aput v10, v0, v1

    const/16 v1, 0x361

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x362

    aput v10, v0, v1

    const/16 v1, 0x363

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x364

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x365

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x366

    aput v12, v0, v1

    const/16 v1, 0x367

    aput v12, v0, v1

    const/16 v1, 0x368

    aput v12, v0, v1

    const/16 v1, 0x369

    aput v11, v0, v1

    const/16 v1, 0x36a

    aput v9, v0, v1

    const/16 v1, 0x36b

    aput v9, v0, v1

    const/16 v1, 0x36c

    aput v10, v0, v1

    const/16 v1, 0x36d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x36e

    aput v13, v0, v1

    const/16 v1, 0x36f

    aput v10, v0, v1

    const/16 v1, 0x370

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x371

    aput v13, v0, v1

    const/16 v1, 0x372

    aput v12, v0, v1

    const/16 v1, 0x373

    aput v12, v0, v1

    const/16 v1, 0x374

    aput v11, v0, v1

    const/16 v1, 0x375

    aput v11, v0, v1

    const/16 v1, 0x376

    aput v9, v0, v1

    const/16 v1, 0x377

    aput v9, v0, v1

    const/16 v1, 0x378

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x379

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x37a

    aput v10, v0, v1

    const/16 v1, 0x37b

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x37c

    aput v10, v0, v1

    const/16 v1, 0x37d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x37e

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x37f

    aput v9, v0, v1

    const/16 v1, 0x380

    aput v9, v0, v1

    const/16 v1, 0x381

    aput v12, v0, v1

    const/16 v1, 0x382

    aput v9, v0, v1

    const/16 v1, 0x383

    aput v13, v0, v1

    const/16 v1, 0x384

    aput v10, v0, v1

    const/16 v1, 0x385

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x386

    aput v10, v0, v1

    const/16 v1, 0x387

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x388

    aput v10, v0, v1

    const/16 v1, 0x389

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x38a

    aput v9, v0, v1

    const/16 v1, 0x38b

    aput v12, v0, v1

    const/16 v1, 0x38c

    aput v9, v0, v1

    const/16 v1, 0x38d

    aput v11, v0, v1

    const/16 v1, 0x38e

    aput v9, v0, v1

    const/16 v1, 0x38f

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x390

    aput v10, v0, v1

    const/16 v1, 0x391

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x392

    aput v10, v0, v1

    const/16 v1, 0x393

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x394

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x395

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x396

    aput v9, v0, v1

    const/16 v1, 0x397

    aput v12, v0, v1

    const/16 v1, 0x398

    aput v12, v0, v1

    const/16 v1, 0x399

    aput v11, v0, v1

    const/16 v1, 0x39a

    aput v9, v0, v1

    const/16 v1, 0x39b

    aput v9, v0, v1

    const/16 v1, 0x39c

    aput v10, v0, v1

    const/16 v1, 0x39d

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x39e

    aput v13, v0, v1

    const/16 v1, 0x39f

    aput v10, v0, v1

    const/16 v1, 0x3a0

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x3a1

    aput v13, v0, v1

    const/16 v1, 0x3a2

    aput v12, v0, v1

    const/16 v1, 0x3a3

    aput v12, v0, v1

    const/16 v1, 0x3a4

    aput v11, v0, v1

    const/16 v1, 0x3a5

    aput v11, v0, v1

    const/16 v1, 0x3a6

    aput v9, v0, v1

    const/16 v1, 0x3a7

    aput v9, v0, v1

    const/16 v1, 0x3a8

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x3a9

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x3aa

    aput v10, v0, v1

    const/16 v1, 0x3ab

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x3ac

    aput v10, v0, v1

    const/16 v1, 0x3ad

    aput v10, v0, v1

    const/16 v1, 0x3ae

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x3af

    aput v9, v0, v1

    const/16 v1, 0x3b0

    aput v9, v0, v1

    const/16 v1, 0x3b1

    aput v12, v0, v1

    const/16 v1, 0x3b2

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x3b3

    aput v13, v0, v1

    const/16 v1, 0x3b4

    const/16 v2, 0xa4

    aput v2, v0, v1

    const/16 v1, 0x3b5

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x3b6

    aput v10, v0, v1

    const/16 v1, 0x3b7

    aput v10, v0, v1

    const/16 v1, 0x3b8

    aput v10, v0, v1

    const/16 v1, 0x3b9

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x3ba

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x3bb

    aput v9, v0, v1

    const/16 v1, 0x3bc

    aput v9, v0, v1

    const/16 v1, 0x3bd

    aput v11, v0, v1

    const/16 v1, 0x3be

    aput v9, v0, v1

    const/16 v1, 0x3bf

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x3c0

    aput v10, v0, v1

    const/16 v1, 0x3c1

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x3c2

    aput v10, v0, v1

    const/16 v1, 0x3c3

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x3c4

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x3c5

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x3c6

    aput v9, v0, v1

    const/16 v1, 0x3c7

    aput v12, v0, v1

    const/16 v1, 0x3c8

    aput v11, v0, v1

    const/16 v1, 0x3c9

    aput v11, v0, v1

    const/16 v1, 0x3ca

    aput v9, v0, v1

    const/16 v1, 0x3cb

    aput v9, v0, v1

    sput-object v0, Lcom/mokee/cloud/calendar/Lunar;->p:[I

    return-void

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 9

    const/16 v8, 0x9

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-boolean v5, Lcom/mokee/cloud/calendar/SolarFestival;->b:Z

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "\u7532"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u4e59"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u4e19"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string/jumbo v6, "\u4e01"

    aput-object v6, v1, v2

    const-string/jumbo v2, "\u620a"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v6, "\u5df1"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v6, "\u5e9a"

    aput-object v6, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v6, "\u8f9b"

    aput-object v6, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v6, "\u58ec"

    aput-object v6, v1, v2

    const-string/jumbo v2, "\u7678"

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->g:[Ljava/lang/String;

    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "\u521d"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v6, "\u5341"

    aput-object v6, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v6, "\u5eff"

    aput-object v6, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v6, "\u5345"

    aput-object v6, v1, v2

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->j:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "\u4e00"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v6, "\u4e8c"

    aput-object v6, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v6, "\u4e09"

    aput-object v6, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v6, "\u56db"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v6, "\u4e94"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v6, "\u516d"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v6, "\u4e03"

    aput-object v6, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v6, "\u516b"

    aput-object v6, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v6, "\u4e5d"

    aput-object v6, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v6, "\u5341"

    aput-object v6, v1, v2

    const/16 v2, 0xa

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x1c

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xb

    const/16 v7, 0x34

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->k:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_6

    :cond_0
    :try_start_1
    sget-object v1, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-eqz v1, :cond_7

    :cond_1
    :try_start_2
    const-string/jumbo v1, "\u958f"

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->e:Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "\u9f20"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v6, "\u725b"

    aput-object v6, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v6, "\u864e"

    aput-object v6, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v6, "\u5154"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v6, "\u9f8d"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v6, "\u86c7"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v6, "\u99ac"

    aput-object v6, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v6, "\u7f8a"

    aput-object v6, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v6, "\u7334"

    aput-object v6, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v6, "\u96de"

    aput-object v6, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v6, "\u72d7"

    aput-object v6, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v6, "\u8c6c"

    aput-object v6, v1, v2

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->f:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "\u5b50"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v6, "\u4e11"

    aput-object v6, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v6, "\u5bc5"

    aput-object v6, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v6, "\u536f"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v6, "\u8fb0"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v6, "\u5df3"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v6, "\u5348"

    aput-object v6, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v6, "\u672a"

    aput-object v6, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v6, "\u7533"

    aput-object v6, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v6, "\u9149"

    aput-object v6, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v6, "\u620c"

    aput-object v6, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v6, "\u4ea5"

    aput-object v6, v1, v2

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->h:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "\u6b63"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v6, "\u4e8c"

    aput-object v6, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v6, "\u4e09"

    aput-object v6, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v6, "\u56db"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v6, "\u4e94"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v6, "\u516d"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v6, "\u4e03"

    aput-object v6, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v6, "\u516b"

    aput-object v6, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v6, "\u4e5d"

    aput-object v6, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v6, "\u5341"

    aput-object v6, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v6, "\u9f15"

    aput-object v6, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v6, "\u81d8"

    aput-object v6, v1, v2

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->i:[Ljava/lang/String;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, ""

    aput-object v6, v1, v2

    const/4 v2, 0x1

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x3c

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x2

    const/16 v7, 0x19

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x3

    const/16 v7, 0xe

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x4

    const/4 v7, 0x0

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x5

    const/16 v7, 0x29

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x6

    const/16 v7, 0x30

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x7

    const/16 v7, 0x2c

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x8

    const/16 v7, 0x16

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x9

    const/16 v7, 0x3b

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xa

    const/16 v7, 0x22

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xb

    const/16 v7, 0x20

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xc

    const/16 v7, 0x31

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xd

    const/16 v7, 0x25

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xe

    const/16 v7, 0x15

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xf

    const/16 v7, 0x21

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x10

    const/4 v7, 0x1

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x11

    const/16 v7, 0x2e

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x12

    const/16 v7, 0x3a

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x13

    const/16 v7, 0x26

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x14

    const/16 v7, 0x12

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x15

    const/16 v7, 0x35

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x16

    const/16 v7, 0xb

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x17

    const/16 v7, 0x9

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x18

    const/16 v7, 0x2d

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    sput-object v1, Lcom/mokee/cloud/calendar/Lunar;->l:[Ljava/lang/String;

    const/16 v1, 0x2f

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    const/16 v0, 0xa

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x1a

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x1

    const/16 v6, 0x28

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x2

    const/16 v6, 0x36

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x3

    const/16 v6, 0x3f

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x4

    const/16 v6, 0xf

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x5

    const/16 v6, 0x37

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x6

    const/16 v6, 0xc

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const/16 v6, 0x13

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/16 v1, 0x8

    const/16 v6, 0x3d

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/16 v1, 0x9

    const/16 v6, 0x24

    aget-object v2, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v1, 0x23

    aget-object v1, v2, v1

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mokee/cloud/calendar/Lunar;->n:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/mokee/cloud/calendar/Lunar;->n:Ljava/text/SimpleDateFormat;

    const/16 v6, 0x27

    aget-object v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v6, v0

    const-wide/32 v6, 0x5265c00

    div-long/2addr v0, v6

    long-to-int v1, v0

    const/16 v0, 0x76c

    if-nez v5, :cond_a

    move v2, v3

    :goto_2
    const/16 v6, 0x802

    if-lt v0, v6, :cond_9

    :cond_3
    if-ltz v1, :cond_b

    :goto_3
    iput v0, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    invoke-static {v0}, Lcom/mokee/cloud/calendar/Lunar;->c(I)I

    move-result v6

    iput-boolean v3, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z

    if-nez v5, :cond_17

    move v0, v4

    move v2, v1

    move v1, v3

    :goto_4
    const/16 v7, 0xd

    if-lt v0, v7, :cond_c

    :cond_4
    if-eqz v2, :cond_11

    :cond_5
    :goto_5
    if-ltz v2, :cond_14

    :goto_6
    :try_start_5
    iput v0, p0, Lcom/mokee/cloud/calendar/Lunar;->b:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/mokee/cloud/calendar/Lunar;->c:I

    sget-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_d

    if-nez v0, :cond_15

    :goto_7
    return-void

    :cond_6
    :try_start_6
    const-string/jumbo v1, "\u95f0"

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->e:Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "\u9f20"

    aput-object v7, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v7, "\u725b"

    aput-object v7, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v7, "\u864e"

    aput-object v7, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v7, "\u5154"

    aput-object v7, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v7, "\u9f99"

    aput-object v7, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v7, "\u86c7"

    aput-object v7, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v7, "\u9a6c"

    aput-object v7, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v7, "\u7f8a"

    aput-object v7, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v7, "\u7334"

    aput-object v7, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v7, "\u9e21"

    aput-object v7, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v7, "\u72d7"

    aput-object v7, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v7, "\u732a"

    aput-object v7, v1, v2

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->f:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "\u5b50"

    aput-object v7, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v7, "\u4e11"

    aput-object v7, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v7, "\u5bc5"

    aput-object v7, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v7, "\u536f"

    aput-object v7, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v7, "\u8fb0"

    aput-object v7, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v7, "\u5df3"

    aput-object v7, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v7, "\u5348"

    aput-object v7, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v7, "\u672a"

    aput-object v7, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v7, "\u7533"

    aput-object v7, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v7, "\u9149"

    aput-object v7, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v7, "\u620c"

    aput-object v7, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v7, "\u4ea5"

    aput-object v7, v1, v2

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->h:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "\u6b63"

    aput-object v7, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v7, "\u4e8c"

    aput-object v7, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v7, "\u4e09"

    aput-object v7, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v7, "\u56db"

    aput-object v7, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v7, "\u4e94"

    aput-object v7, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v7, "\u516d"

    aput-object v7, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v7, "\u4e03"

    aput-object v7, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v7, "\u516b"

    aput-object v7, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v7, "\u4e5d"

    aput-object v7, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v7, "\u5341"

    aput-object v7, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v7, "\u51ac"

    aput-object v7, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v7, "\u814a"

    aput-object v7, v1, v2

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->i:[Ljava/lang/String;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, ""

    aput-object v7, v1, v2

    const/4 v2, 0x1

    const/16 v7, 0x3c

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x2

    const/16 v7, 0x19

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x3

    const/16 v7, 0xe

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x4

    const/4 v7, 0x0

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x5

    const/16 v7, 0x10

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x6

    const/16 v7, 0x30

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x7

    const/16 v7, 0x2c

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x8

    const/16 v7, 0x40

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x9

    const/16 v7, 0x3b

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xa

    const/16 v7, 0x18

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xb

    const/16 v7, 0x39

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xc

    const/16 v7, 0x31

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xd

    const/16 v7, 0x25

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xe

    const/16 v7, 0x15

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xf

    const/16 v7, 0x21

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x10

    const/4 v7, 0x7

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x11

    const/16 v7, 0x2e

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x12

    const/16 v7, 0x3a

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x13

    const/16 v7, 0x26

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x14

    const/16 v7, 0x12

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x15

    const/16 v7, 0x35

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x16

    const/16 v7, 0xb

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x17

    const/16 v7, 0x9

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x18

    const/16 v7, 0x2d

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    sput-object v1, Lcom/mokee/cloud/calendar/Lunar;->l:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v7, 0x14

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x1

    const/16 v7, 0x2b

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x2

    const/16 v7, 0x38

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x3

    const/16 v7, 0x1b

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x4

    const/16 v7, 0x3e

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x5

    const/16 v7, 0x1e

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x6

    const/16 v7, 0x2a

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/4 v2, 0x7

    const/16 v7, 0x41

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x8

    const/4 v7, 0x4

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0x9

    const/4 v7, 0x6

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xa

    const/16 v7, 0x33

    aget-object v7, v6, v7

    aput-object v7, v1, v2

    const/16 v2, 0xb

    const/16 v7, 0xa

    aget-object v6, v6, v7

    aput-object v6, v1, v2

    sput-object v1, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_1

    if-nez v5, :cond_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    move-exception v0

    throw v0

    :cond_7
    :try_start_c
    sget-object v1, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_c} :catch_3

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0xa

    :try_start_d
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x1

    const/16 v6, 0xd

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x2

    const/16 v6, 0x36

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x3

    const/16 v6, 0x11

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x4

    const/16 v6, 0x32

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x5

    const/16 v6, 0xf

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x6

    const/16 v6, 0x37

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const/16 v6, 0x1f

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/16 v1, 0x8

    const/16 v6, 0x13

    aget-object v6, v2, v6

    aput-object v6, v0, v1

    const/16 v1, 0x9

    const/16 v6, 0x3d

    aget-object v2, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_d} :catch_5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    if-lez v1, :cond_3

    :cond_a
    invoke-static {v0}, Lcom/mokee/cloud/calendar/Lunar;->a(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_b
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3

    :cond_c
    if-lez v2, :cond_4

    :goto_8
    if-gtz v6, :cond_f

    :cond_d
    iget v1, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    invoke-static {v1, v0}, Lcom/mokee/cloud/calendar/Lunar;->a(II)I

    move-result v1

    :goto_9
    sub-int/2addr v2, v1

    :try_start_e
    iget-boolean v7, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_e} :catch_9

    if-nez v7, :cond_10

    :cond_e
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_f
    add-int/lit8 v1, v6, 0x1

    if-ne v0, v1, :cond_d

    :try_start_f
    iget-boolean v1, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_f} :catch_7

    if-nez v1, :cond_d

    add-int/lit8 v0, v0, -0x1

    iput-boolean v4, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z

    iget v1, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    invoke-static {v1}, Lcom/mokee/cloud/calendar/Lunar;->b(I)I

    move-result v1

    if-nez v5, :cond_d

    goto :goto_9

    :catch_7
    move-exception v0

    throw v0

    :cond_10
    add-int/lit8 v7, v6, 0x1

    if-ne v0, v7, :cond_e

    const/4 v7, 0x0

    :try_start_10
    iput-boolean v7, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    throw v0

    :catch_9
    move-exception v0

    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_11} :catch_8

    :cond_11
    if-lez v6, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v0, v6, :cond_5

    :try_start_12
    iget-boolean v6, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_12} :catch_b

    if-nez v6, :cond_13

    :cond_12
    const/4 v6, 0x1

    :try_start_13
    iput-boolean v6, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_13} :catch_c

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_5

    :catch_a
    move-exception v0

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_14} :catch_b

    :catch_b
    move-exception v0

    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_15} :catch_c

    :catch_c
    move-exception v0

    throw v0

    :cond_13
    const/4 v6, 0x0

    :try_start_16
    iput-boolean v6, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_16
    .catch Ljava/text/ParseException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/text/ParseException; {:try_start_16 .. :try_end_16} :catch_c

    if-nez v5, :cond_12

    goto/16 :goto_5

    :cond_14
    add-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_15
    if-nez v5, :cond_16

    :goto_b
    sput-boolean v4, Lcom/mokee/cloud/calendar/SolarFestival;->b:Z

    goto/16 :goto_7

    :catch_d
    move-exception v0

    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_17 .. :try_end_17} :catch_e

    :catch_e
    move-exception v0

    throw v0

    :cond_16
    move v4, v3

    goto :goto_b

    :cond_17
    move v0, v4

    move v2, v1

    goto :goto_8
.end method

.method private static a(I)I
    .locals 6

    sget-boolean v2, Lcom/mokee/cloud/calendar/SolarFestival;->b:Z

    const/16 v1, 0x15c

    const v0, 0x8000

    if-nez v2, :cond_0

    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    :cond_0
    sget-object v2, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/mokee/cloud/calendar/Lunar;->b(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(II)I
    .locals 4

    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mokee/cloud/calendar/Lunar;->f:[Ljava/lang/String;

    iget v1, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static a([C)Ljava/lang/String;
    .locals 4

    array-length v1, p0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-le v2, v1, :cond_0

    aget-char v3, p0, v1

    rem-int/lit8 v0, v1, 0x7

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x7c

    :goto_1
    xor-int/2addr v0, v3

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x4f

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x1d

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x83

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xe2

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x6d

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)[C
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget-char v1, v0, v3

    xor-int/lit8 v1, v1, 0x7c

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method private static b(I)I
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/mokee/cloud/calendar/Lunar;->c(I)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    return v0

    :cond_1
    const/16 v0, 0x1d

    return v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    invoke-direct {p0, v0}, Lcom/mokee/cloud/calendar/Lunar;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(I)I
    .locals 4

    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private c()Z
    .locals 2

    iget v0, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    iget v1, p0, Lcom/mokee/cloud/calendar/Lunar;->b:I

    invoke-static {v0, v1}, Lcom/mokee/cloud/calendar/Lunar;->a(II)I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private d(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->g:[Ljava/lang/String;

    rem-int/lit8 v2, p1, 0xa

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->h:[Ljava/lang/String;

    rem-int/lit8 v2, p1, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(I)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x1e

    rem-int/lit8 v0, p1, 0xa

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p1, v2, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x14

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mokee/cloud/calendar/Lunar;->j:[Ljava/lang/String;

    div-int/lit8 v3, p1, 0xa

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mokee/cloud/calendar/Lunar;->k:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0

    :cond_3
    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0

    :cond_4
    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getLunarFestivalInfo(Ljava/lang/String;Lcom/mokee/cloud/calendar/Lunar;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/mokee/cloud/calendar/SolarFestival;->b:Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    :goto_1
    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    aget-object v0, v4, v6

    return-object v0

    :cond_1
    invoke-direct {p1}, Lcom/mokee/cloud/calendar/Lunar;->c()Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, v4, v6

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static getSolarTermInfo(III)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x10

    const/16 v5, 0xf

    const/4 v4, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/mokee/cloud/calendar/SolarFestival;->b:Z

    add-int/lit16 v1, p0, -0x7b2

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, p1

    sget-object v3, Lcom/mokee/cloud/calendar/Lunar;->p:[I

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    if-lt p2, v5, :cond_1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    :goto_0
    if-eq v1, p2, :cond_2

    :goto_1
    sget-object v1, Lcom/mokee/cloud/calendar/Lunar;->l:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0xf

    if-nez v2, :cond_0

    goto :goto_0

    :cond_2
    if-gt p2, v5, :cond_4

    :cond_3
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    if-nez v2, :cond_3

    goto :goto_1
.end method


# virtual methods
.method public getFullLunarString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mokee/cloud/calendar/Lunar;->getLunarYearString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mokee/cloud/calendar/Lunar;->getLunarMonthString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mokee/cloud/calendar/Lunar;->getLunarDayString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mokee/cloud/calendar/Lunar;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLunarDayString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/mokee/cloud/calendar/Lunar;->c:I

    invoke-direct {p0, v0}, Lcom/mokee/cloud/calendar/Lunar;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLunarMonthString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->i:[Ljava/lang/String;

    iget v2, p0, Lcom/mokee/cloud/calendar/Lunar;->b:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLunarYearString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mokee/cloud/calendar/Lunar;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mokee/cloud/calendar/Lunar;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
