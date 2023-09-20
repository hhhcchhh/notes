.class public Lch/ethz/ssh2/crypto/cipher/DES;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/ethz/ssh2/crypto/cipher/BlockCipher;


# static fields
.field static Df_Key:[S

.field static SP1:[I

.field static SP2:[I

.field static SP3:[I

.field static SP4:[I

.field static SP5:[I

.field static SP6:[I

.field static SP7:[I

.field static SP8:[I

.field static bigbyte:[I

.field static bytebit:[S

.field static pc1:[B

.field static pc2:[B

.field static totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x18

    new-array v1, v0, [S

    .line 1
    fill-array-data v1, :array_0

    .line 3
    sput-object v1, Lch/ethz/ssh2/crypto/cipher/DES;->Df_Key:[S

    const/16 v1, 0x8

    new-array v2, v1, [S

    .line 6
    fill-array-data v2, :array_1

    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->bytebit:[S

    new-array v2, v0, [I

    .line 8
    fill-array-data v2, :array_2

    .line 10
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->bigbyte:[I

    const/16 v2, 0x38

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x38

    aput-byte v4, v2, v3

    const/16 v3, 0x30

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    const/16 v5, 0x28

    aput-byte v5, v2, v3

    const/4 v6, 0x3

    const/16 v7, 0x20

    aput-byte v7, v2, v6

    const/4 v6, 0x4

    aput-byte v0, v2, v6

    const/4 v8, 0x5

    const/16 v9, 0x10

    aput-byte v9, v2, v8

    const/4 v8, 0x6

    aput-byte v1, v2, v8

    const/16 v10, 0x39

    aput-byte v10, v2, v1

    const/16 v10, 0x31

    const/16 v11, 0x9

    aput-byte v10, v2, v11

    const/16 v10, 0xa

    const/16 v12, 0x29

    aput-byte v12, v2, v10

    const/16 v10, 0xb

    const/16 v13, 0x21

    aput-byte v13, v2, v10

    const/16 v14, 0x19

    const/16 v15, 0xc

    aput-byte v14, v2, v15

    const/16 v14, 0xd

    const/16 v16, 0x11

    aput-byte v16, v2, v14

    const/16 v14, 0xe

    aput-byte v11, v2, v14

    const/16 v16, 0xf

    aput-byte v4, v2, v16

    const/16 v16, 0x3a

    aput-byte v16, v2, v9

    const/16 v16, 0x11

    const/16 v17, 0x32

    aput-byte v17, v2, v16

    const/16 v16, 0x2a

    const/16 v17, 0x12

    aput-byte v16, v2, v17

    const/16 v16, 0x13

    const/16 v18, 0x22

    aput-byte v18, v2, v16

    const/16 v16, 0x1a

    const/16 v18, 0x14

    aput-byte v16, v2, v18

    const/16 v16, 0x15

    aput-byte v17, v2, v16

    const/16 v16, 0xa

    const/16 v19, 0x16

    aput-byte v16, v2, v19

    const/16 v16, 0x17

    aput-byte v3, v2, v16

    const/16 v16, 0x3b

    aput-byte v16, v2, v0

    const/16 v16, 0x19

    const/16 v20, 0x33

    aput-byte v20, v2, v16

    const/16 v16, 0x1a

    const/16 v20, 0x2b

    aput-byte v20, v2, v16

    const/16 v16, 0x1b

    const/16 v21, 0x23

    aput-byte v21, v2, v16

    const/16 v22, 0x1c

    const/16 v23, 0x3e

    aput-byte v23, v2, v22

    const/16 v22, 0x36

    const/16 v23, 0x1d

    aput-byte v22, v2, v23

    const/16 v22, 0x1e

    const/16 v24, 0x2e

    aput-byte v24, v2, v22

    const/16 v22, 0x1f

    const/16 v24, 0x26

    aput-byte v24, v2, v22

    const/16 v22, 0x1e

    aput-byte v22, v2, v7

    aput-byte v19, v2, v13

    const/16 v22, 0x22

    aput-byte v14, v2, v22

    aput-byte v8, v2, v21

    const/16 v22, 0x24

    const/16 v24, 0x3d

    aput-byte v24, v2, v22

    const/16 v22, 0x25

    const/16 v24, 0x35

    aput-byte v24, v2, v22

    const/16 v22, 0x26

    const/16 v24, 0x2d

    aput-byte v24, v2, v22

    const/16 v22, 0x27

    const/16 v24, 0x25

    aput-byte v24, v2, v22

    aput-byte v23, v2, v5

    const/16 v22, 0x15

    aput-byte v22, v2, v12

    const/16 v22, 0x2a

    const/16 v24, 0xd

    aput-byte v24, v2, v22

    const/16 v22, 0x5

    aput-byte v22, v2, v20

    const/16 v22, 0x2c

    const/16 v24, 0x3c

    aput-byte v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x34

    aput-byte v24, v2, v22

    const/16 v22, 0x2e

    const/16 v24, 0x2c

    aput-byte v24, v2, v22

    const/16 v22, 0x2f

    const/16 v24, 0x24

    aput-byte v24, v2, v22

    const/16 v22, 0x30

    const/16 v24, 0x1c

    aput-byte v24, v2, v22

    const/16 v22, 0x31

    aput-byte v18, v2, v22

    const/16 v22, 0x32

    aput-byte v15, v2, v22

    const/16 v22, 0x33

    aput-byte v6, v2, v22

    const/16 v22, 0x34

    aput-byte v16, v2, v22

    const/16 v22, 0x35

    const/16 v24, 0x13

    aput-byte v24, v2, v22

    const/16 v22, 0x36

    aput-byte v10, v2, v22

    const/16 v22, 0x37

    const/16 v24, 0x3

    aput-byte v24, v2, v22

    .line 20
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->pc1:[B

    new-array v2, v9, [B

    .line 24
    fill-array-data v2, :array_3

    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->totrot:[B

    const/16 v2, 0x30

    new-array v2, v2, [B

    const/16 v22, 0x0

    const/16 v24, 0xd

    aput-byte v24, v2, v22

    aput-byte v9, v2, v4

    const/16 v22, 0xa

    aput-byte v22, v2, v3

    const/16 v22, 0x3

    const/16 v24, 0x17

    aput-byte v24, v2, v22

    const/16 v22, 0x5

    aput-byte v6, v2, v22

    aput-byte v3, v2, v8

    const/16 v22, 0x7

    aput-byte v16, v2, v22

    aput-byte v14, v2, v1

    const/16 v22, 0x5

    aput-byte v22, v2, v11

    const/16 v22, 0xa

    aput-byte v18, v2, v22

    aput-byte v11, v2, v10

    aput-byte v19, v2, v15

    const/16 v22, 0xd

    aput-byte v17, v2, v22

    aput-byte v10, v2, v14

    const/16 v22, 0xf

    const/16 v24, 0x3

    aput-byte v24, v2, v22

    const/16 v22, 0x19

    aput-byte v22, v2, v9

    const/16 v22, 0x11

    const/16 v24, 0x7

    aput-byte v24, v2, v22

    const/16 v22, 0xf

    aput-byte v22, v2, v17

    const/16 v22, 0x13

    aput-byte v8, v2, v22

    const/16 v22, 0x1a

    aput-byte v22, v2, v18

    const/16 v22, 0x15

    const/16 v24, 0x13

    aput-byte v24, v2, v22

    aput-byte v15, v2, v19

    const/16 v22, 0x17

    aput-byte v4, v2, v22

    aput-byte v5, v2, v0

    const/16 v22, 0x19

    const/16 v24, 0x33

    aput-byte v24, v2, v22

    const/16 v22, 0x1a

    const/16 v24, 0x1e

    aput-byte v24, v2, v22

    const/16 v22, 0x24

    aput-byte v22, v2, v16

    const/16 v22, 0x1c

    const/16 v24, 0x2e

    aput-byte v24, v2, v22

    const/16 v22, 0x36

    aput-byte v22, v2, v23

    const/16 v22, 0x1e

    aput-byte v23, v2, v22

    const/16 v22, 0x1f

    const/16 v24, 0x27

    aput-byte v24, v2, v22

    const/16 v22, 0x32

    aput-byte v22, v2, v7

    const/16 v22, 0x2c

    aput-byte v22, v2, v13

    const/16 v22, 0x22

    aput-byte v7, v2, v22

    const/16 v22, 0x2f

    aput-byte v22, v2, v21

    const/16 v22, 0x24

    aput-byte v20, v2, v22

    const/16 v22, 0x25

    const/16 v24, 0x30

    aput-byte v24, v2, v22

    const/16 v22, 0x26

    const/16 v24, 0x26

    aput-byte v24, v2, v22

    const/16 v22, 0x27

    const/16 v24, 0x37

    aput-byte v24, v2, v22

    aput-byte v13, v2, v5

    const/16 v22, 0x34

    aput-byte v22, v2, v12

    const/16 v22, 0x2a

    const/16 v24, 0x2d

    aput-byte v24, v2, v22

    aput-byte v12, v2, v20

    const/16 v22, 0x2c

    const/16 v24, 0x31

    aput-byte v24, v2, v22

    const/16 v22, 0x2d

    aput-byte v21, v2, v22

    const/16 v22, 0x2e

    const/16 v24, 0x1c

    aput-byte v24, v2, v22

    const/16 v22, 0x2f

    const/16 v24, 0x1f

    aput-byte v24, v2, v22

    .line 28
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->pc2:[B

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, 0x1010400

    aput v24, v2, v22

    const/high16 v22, 0x10000

    aput v22, v2, v3

    const/16 v22, 0x3

    const v24, 0x1010404

    aput v24, v2, v22

    const v22, 0x1010004

    aput v22, v2, v6

    const/16 v22, 0x5

    const v24, 0x10404

    aput v24, v2, v22

    aput v6, v2, v8

    const/16 v22, 0x7

    const/high16 v24, 0x10000

    aput v24, v2, v22

    const/16 v22, 0x400

    aput v22, v2, v1

    const v22, 0x1010400

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, 0x1010404

    aput v24, v2, v22

    const/16 v22, 0x400

    aput v22, v2, v10

    const v22, 0x1000404

    aput v22, v2, v15

    const/16 v22, 0xd

    const v24, 0x1010004

    aput v24, v2, v22

    const/high16 v22, 0x1000000

    aput v22, v2, v14

    const/16 v22, 0xf

    aput v6, v2, v22

    const/16 v22, 0x404

    aput v22, v2, v9

    const/16 v22, 0x11

    const v24, 0x1000400

    aput v24, v2, v22

    const v22, 0x1000400

    aput v22, v2, v17

    const/16 v22, 0x13

    const v24, 0x10400

    aput v24, v2, v22

    const v22, 0x10400

    aput v22, v2, v18

    const/16 v22, 0x15

    const/high16 v24, 0x1010000

    aput v24, v2, v22

    const/high16 v22, 0x1010000

    aput v22, v2, v19

    const/16 v22, 0x17

    const v24, 0x1000404

    aput v24, v2, v22

    const v22, 0x10004

    aput v22, v2, v0

    const/16 v22, 0x19

    const v24, 0x1000004

    aput v24, v2, v22

    const/16 v22, 0x1a

    aput v24, v2, v22

    const v22, 0x10004

    aput v22, v2, v16

    const/16 v22, 0x404

    aput v22, v2, v23

    const/16 v22, 0x1e

    const v24, 0x10404

    aput v24, v2, v22

    const/16 v22, 0x1f

    const/high16 v24, 0x1000000

    aput v24, v2, v22

    const/high16 v22, 0x10000

    aput v22, v2, v7

    const v22, 0x1010404

    aput v22, v2, v13

    const/16 v22, 0x22

    aput v6, v2, v22

    const/high16 v22, 0x1010000

    aput v22, v2, v21

    const/16 v22, 0x24

    const v24, 0x1010400

    aput v24, v2, v22

    const/16 v22, 0x25

    const/high16 v24, 0x1000000

    aput v24, v2, v22

    const/16 v22, 0x26

    aput v24, v2, v22

    const/16 v22, 0x27

    const/16 v24, 0x400

    aput v24, v2, v22

    const v22, 0x1010004

    aput v22, v2, v5

    const/high16 v22, 0x10000

    aput v22, v2, v12

    const/16 v22, 0x2a

    const v24, 0x10400

    aput v24, v2, v22

    const v22, 0x1000004

    aput v22, v2, v20

    const/16 v22, 0x2c

    const/16 v24, 0x400

    aput v24, v2, v22

    const/16 v22, 0x2d

    aput v6, v2, v22

    const/16 v22, 0x2e

    const v24, 0x1000404

    aput v24, v2, v22

    const/16 v22, 0x2f

    const v24, 0x10404

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x1010404

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, 0x10004

    aput v24, v2, v22

    const/16 v22, 0x32

    const/high16 v24, 0x1010000

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, 0x1000404

    aput v24, v2, v22

    const/16 v22, 0x34

    const v24, 0x1000004

    aput v24, v2, v22

    const/16 v22, 0x35

    const/16 v24, 0x404

    aput v24, v2, v22

    const/16 v22, 0x36

    const v24, 0x10404

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x1010400

    aput v24, v2, v22

    const/16 v22, 0x38

    const/16 v24, 0x404

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x1000400

    aput v24, v2, v22

    const/16 v22, 0x3a

    aput v24, v2, v22

    const/16 v22, 0x3c

    const v24, 0x10004

    aput v24, v2, v22

    const/16 v22, 0x3d

    const v24, 0x10400

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x1010004

    aput v24, v2, v22

    .line 39
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->SP1:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, -0x7fef7fe0

    aput v24, v2, v22

    const v22, -0x7fff8000

    aput v22, v2, v4

    const v22, 0x8000

    aput v22, v2, v3

    const/16 v22, 0x3

    const v24, 0x108020

    aput v24, v2, v22

    const/high16 v22, 0x100000

    aput v22, v2, v6

    const/16 v22, 0x5

    aput v7, v2, v22

    const v22, -0x7fefffe0

    aput v22, v2, v8

    const/16 v22, 0x7

    const v24, -0x7fff7fe0

    aput v24, v2, v22

    const v22, -0x7fffffe0

    aput v22, v2, v1

    const v22, -0x7fef7fe0

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, -0x7fef8000

    aput v24, v2, v22

    const/high16 v22, -0x80000000

    aput v22, v2, v10

    const v22, -0x7fff8000

    aput v22, v2, v15

    const/16 v22, 0xd

    const/high16 v24, 0x100000

    aput v24, v2, v22

    aput v7, v2, v14

    const/16 v22, 0xf

    const v24, -0x7fefffe0

    aput v24, v2, v22

    const v22, 0x108000

    aput v22, v2, v9

    const/16 v22, 0x11

    const v24, 0x100020

    aput v24, v2, v22

    const v22, -0x7fff7fe0

    aput v22, v2, v17

    const/high16 v22, -0x80000000

    aput v22, v2, v18

    const/16 v22, 0x15

    const v24, 0x8000

    aput v24, v2, v22

    const v22, 0x108020

    aput v22, v2, v19

    const/16 v22, 0x17

    const/high16 v24, -0x7ff00000

    aput v24, v2, v22

    const v22, 0x100020

    aput v22, v2, v0

    const/16 v22, 0x19

    const v24, -0x7fffffe0

    aput v24, v2, v22

    const v22, 0x108000

    aput v22, v2, v16

    const/16 v22, 0x1c

    const v24, 0x8020

    aput v24, v2, v22

    const v22, -0x7fef8000

    aput v22, v2, v23

    const/16 v22, 0x1e

    const/high16 v24, -0x7ff00000

    aput v24, v2, v22

    const/16 v22, 0x1f

    const v24, 0x8020

    aput v24, v2, v22

    const v22, 0x108020

    aput v22, v2, v13

    const/16 v22, 0x22

    const v24, -0x7fefffe0

    aput v24, v2, v22

    const/high16 v22, 0x100000

    aput v22, v2, v21

    const/16 v22, 0x24

    const v24, -0x7fff7fe0

    aput v24, v2, v22

    const/16 v22, 0x25

    const/high16 v24, -0x7ff00000

    aput v24, v2, v22

    const/16 v22, 0x26

    const v24, -0x7fef8000

    aput v24, v2, v22

    const/16 v22, 0x27

    const v24, 0x8000

    aput v24, v2, v22

    const/high16 v22, -0x7ff00000

    aput v22, v2, v5

    const v22, -0x7fff8000

    aput v22, v2, v12

    const/16 v22, 0x2a

    aput v7, v2, v22

    const v22, -0x7fef7fe0

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x108020

    aput v24, v2, v22

    const/16 v22, 0x2d

    aput v7, v2, v22

    const/16 v22, 0x2e

    const v24, 0x8000

    aput v24, v2, v22

    const/16 v22, 0x2f

    const/high16 v24, -0x80000000

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x8020

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, -0x7fef8000

    aput v24, v2, v22

    const/16 v22, 0x32

    const/high16 v24, 0x100000

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, -0x7fffffe0

    aput v24, v2, v22

    const/16 v22, 0x34

    const v24, 0x100020

    aput v24, v2, v22

    const/16 v22, 0x35

    const v24, -0x7fff7fe0

    aput v24, v2, v22

    const/16 v22, 0x36

    const v24, -0x7fffffe0

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x100020

    aput v24, v2, v22

    const/16 v22, 0x38

    const v24, 0x108000

    aput v24, v2, v22

    const/16 v22, 0x3a

    const v24, -0x7fff8000

    aput v24, v2, v22

    const/16 v22, 0x3b

    const v24, 0x8020

    aput v24, v2, v22

    const/16 v22, 0x3c

    const/high16 v24, -0x80000000

    aput v24, v2, v22

    const/16 v22, 0x3d

    const v24, -0x7fefffe0

    aput v24, v2, v22

    const/16 v22, 0x3e

    const v24, -0x7fef7fe0

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x108000

    aput v24, v2, v22

    .line 56
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->SP2:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const/16 v24, 0x208

    aput v24, v2, v22

    const v22, 0x8020200

    aput v22, v2, v4

    const/16 v22, 0x3

    const v24, 0x8020008

    aput v24, v2, v22

    const v22, 0x8000200

    aput v22, v2, v6

    const v22, 0x20208

    aput v22, v2, v8

    const/16 v22, 0x7

    const v24, 0x8000200

    aput v24, v2, v22

    const v22, 0x20008

    aput v22, v2, v1

    const v22, 0x8000008

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, 0x8000008

    aput v24, v2, v22

    const/high16 v22, 0x20000

    aput v22, v2, v10

    const v22, 0x8020208

    aput v22, v2, v15

    const/16 v22, 0xd

    const v24, 0x20008

    aput v24, v2, v22

    const/high16 v22, 0x8020000

    aput v22, v2, v14

    const/16 v22, 0xf

    const/16 v24, 0x208

    aput v24, v2, v22

    const/high16 v22, 0x8000000

    aput v22, v2, v9

    const/16 v22, 0x11

    aput v1, v2, v22

    const v22, 0x8020200

    aput v22, v2, v17

    const/16 v22, 0x13

    const/16 v24, 0x200

    aput v24, v2, v22

    const v22, 0x20200

    aput v22, v2, v18

    const/16 v22, 0x15

    const/high16 v24, 0x8020000

    aput v24, v2, v22

    const v22, 0x8020008

    aput v22, v2, v19

    const/16 v22, 0x17

    const v24, 0x20208

    aput v24, v2, v22

    const v22, 0x8000208

    aput v22, v2, v0

    const/16 v22, 0x19

    const v24, 0x20200

    aput v24, v2, v22

    const/16 v22, 0x1a

    const/high16 v24, 0x20000

    aput v24, v2, v22

    const v22, 0x8000208

    aput v22, v2, v16

    const/16 v22, 0x1c

    aput v1, v2, v22

    const v22, 0x8020208

    aput v22, v2, v23

    const/16 v22, 0x1e

    const/16 v24, 0x200

    aput v24, v2, v22

    const/16 v22, 0x1f

    const/high16 v24, 0x8000000

    aput v24, v2, v22

    const v22, 0x8020200

    aput v22, v2, v7

    const/high16 v22, 0x8000000

    aput v22, v2, v13

    const/16 v22, 0x22

    const v24, 0x20008

    aput v24, v2, v22

    const/16 v22, 0x208

    aput v22, v2, v21

    const/16 v22, 0x24

    const/high16 v24, 0x20000

    aput v24, v2, v22

    const/16 v22, 0x25

    const v24, 0x8020200

    aput v24, v2, v22

    const/16 v22, 0x26

    const v24, 0x8000200

    aput v24, v2, v22

    const/16 v22, 0x200

    aput v22, v2, v5

    const v22, 0x20008

    aput v22, v2, v12

    const/16 v22, 0x2a

    const v24, 0x8020208

    aput v24, v2, v22

    const v22, 0x8000200

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x8000008

    aput v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x200

    aput v24, v2, v22

    const/16 v22, 0x2f

    const v24, 0x8020008

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x8000208

    aput v24, v2, v22

    const/16 v22, 0x31

    const/high16 v24, 0x20000

    aput v24, v2, v22

    const/16 v22, 0x32

    const/high16 v24, 0x8000000

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, 0x8020208

    aput v24, v2, v22

    const/16 v22, 0x34

    aput v1, v2, v22

    const/16 v22, 0x35

    const v24, 0x20208

    aput v24, v2, v22

    const/16 v22, 0x36

    const v24, 0x20200

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x8000008

    aput v24, v2, v22

    const/16 v22, 0x38

    const/high16 v24, 0x8020000

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x8000208

    aput v24, v2, v22

    const/16 v22, 0x3a

    const/16 v24, 0x208

    aput v24, v2, v22

    const/16 v22, 0x3b

    const/high16 v24, 0x8020000

    aput v24, v2, v22

    const/16 v22, 0x3c

    const v24, 0x20208

    aput v24, v2, v22

    const/16 v22, 0x3d

    aput v1, v2, v22

    const/16 v22, 0x3e

    const v24, 0x8020008

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x20200

    aput v24, v2, v22

    .line 73
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->SP3:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, 0x802001

    aput v24, v2, v22

    const/16 v22, 0x2081

    aput v22, v2, v4

    aput v22, v2, v3

    const/16 v22, 0x3

    const/16 v24, 0x80

    aput v24, v2, v22

    const v22, 0x802080

    aput v22, v2, v6

    const/16 v22, 0x5

    const v24, 0x800081

    aput v24, v2, v22

    const v22, 0x800001

    aput v22, v2, v8

    const/16 v22, 0x7

    const/16 v24, 0x2001

    aput v24, v2, v22

    const v22, 0x802000

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, 0x802000

    aput v24, v2, v22

    const v22, 0x802081

    aput v22, v2, v10

    const/16 v22, 0x81

    aput v22, v2, v15

    const v22, 0x800080

    aput v22, v2, v14

    const/16 v22, 0xf

    const v24, 0x800001

    aput v24, v2, v22

    aput v4, v2, v9

    const/16 v22, 0x11

    const/16 v24, 0x2000

    aput v24, v2, v22

    const/high16 v22, 0x800000

    aput v22, v2, v17

    const/16 v22, 0x13

    const v24, 0x802001

    aput v24, v2, v22

    const/16 v22, 0x80

    aput v22, v2, v18

    const/16 v22, 0x15

    const/high16 v24, 0x800000

    aput v24, v2, v22

    const/16 v22, 0x2001

    aput v22, v2, v19

    const/16 v22, 0x17

    const/16 v24, 0x2080

    aput v24, v2, v22

    const v22, 0x800081

    aput v22, v2, v0

    const/16 v22, 0x19

    aput v4, v2, v22

    const/16 v22, 0x1a

    aput v24, v2, v22

    const v22, 0x800080

    aput v22, v2, v16

    const/16 v22, 0x1c

    const/16 v24, 0x2000

    aput v24, v2, v22

    const v22, 0x802080

    aput v22, v2, v23

    const/16 v22, 0x1e

    const v24, 0x802081

    aput v24, v2, v22

    const/16 v22, 0x1f

    const/16 v24, 0x81

    aput v24, v2, v22

    const v22, 0x800080

    aput v22, v2, v7

    const v22, 0x800001

    aput v22, v2, v13

    const/16 v22, 0x22

    const v24, 0x802000

    aput v24, v2, v22

    const v22, 0x802081

    aput v22, v2, v21

    const/16 v22, 0x24

    const/16 v24, 0x81

    aput v24, v2, v22

    const/16 v22, 0x27

    const v24, 0x802000

    aput v24, v2, v22

    const/16 v22, 0x2080

    aput v22, v2, v5

    const v22, 0x800080

    aput v22, v2, v12

    const/16 v22, 0x2a

    const v24, 0x800081

    aput v24, v2, v22

    aput v4, v2, v20

    const/16 v22, 0x2c

    const v24, 0x802001

    aput v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x2081

    aput v24, v2, v22

    const/16 v22, 0x2e

    aput v24, v2, v22

    const/16 v22, 0x2f

    const/16 v24, 0x80

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x802081

    aput v24, v2, v22

    const/16 v22, 0x31

    const/16 v24, 0x81

    aput v24, v2, v22

    const/16 v22, 0x32

    aput v4, v2, v22

    const/16 v22, 0x33

    const/16 v24, 0x2000

    aput v24, v2, v22

    const/16 v22, 0x34

    const v24, 0x800001

    aput v24, v2, v22

    const/16 v22, 0x35

    const/16 v24, 0x2001

    aput v24, v2, v22

    const/16 v22, 0x36

    const v24, 0x802080

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x800081

    aput v24, v2, v22

    const/16 v22, 0x38

    const/16 v24, 0x2001

    aput v24, v2, v22

    const/16 v22, 0x39

    const/16 v24, 0x2080

    aput v24, v2, v22

    const/16 v22, 0x3a

    const/high16 v24, 0x800000

    aput v24, v2, v22

    const/16 v22, 0x3b

    const v24, 0x802001

    aput v24, v2, v22

    const/16 v22, 0x3c

    const/16 v24, 0x80

    aput v24, v2, v22

    const/16 v22, 0x3d

    const/high16 v24, 0x800000

    aput v24, v2, v22

    const/16 v22, 0x3e

    const/16 v24, 0x2000

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x802080

    aput v24, v2, v22

    .line 90
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->SP4:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const/16 v24, 0x100

    aput v24, v2, v22

    const v22, 0x2080100

    aput v22, v2, v4

    const/high16 v22, 0x2080000

    aput v22, v2, v3

    const/16 v22, 0x3

    const v24, 0x42000100    # 32.000977f

    aput v24, v2, v22

    const/high16 v22, 0x80000

    aput v22, v2, v6

    const/16 v22, 0x5

    const/16 v24, 0x100

    aput v24, v2, v22

    const/high16 v22, 0x40000000    # 2.0f

    aput v22, v2, v8

    const/16 v22, 0x7

    const/high16 v24, 0x2080000

    aput v24, v2, v22

    const v22, 0x40080100

    aput v22, v2, v1

    const/high16 v22, 0x80000

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, 0x2000100

    aput v24, v2, v22

    const v22, 0x40080100

    aput v22, v2, v10

    const v22, 0x42000100    # 32.000977f

    aput v22, v2, v15

    const/16 v22, 0xd

    const/high16 v24, 0x42080000    # 34.0f

    aput v24, v2, v22

    const v22, 0x80100

    aput v22, v2, v14

    const/16 v22, 0xf

    const/high16 v24, 0x40000000    # 2.0f

    aput v24, v2, v22

    const/high16 v22, 0x2000000

    aput v22, v2, v9

    const/16 v22, 0x11

    const/high16 v24, 0x40080000    # 2.125f

    aput v24, v2, v22

    const/high16 v22, 0x40080000    # 2.125f

    aput v22, v2, v17

    const v22, 0x40000100    # 2.000061f

    aput v22, v2, v18

    const/16 v22, 0x15

    const v24, 0x42080100    # 34.000977f

    aput v24, v2, v22

    const v22, 0x42080100    # 34.000977f

    aput v22, v2, v19

    const/16 v22, 0x17

    const v24, 0x2000100

    aput v24, v2, v22

    const/high16 v22, 0x42080000    # 34.0f

    aput v22, v2, v0

    const/16 v22, 0x19

    const v24, 0x40000100    # 2.000061f

    aput v24, v2, v22

    const/high16 v22, 0x42000000    # 32.0f

    aput v22, v2, v16

    const/16 v22, 0x1c

    const v24, 0x2080100

    aput v24, v2, v22

    const/high16 v22, 0x2000000

    aput v22, v2, v23

    const/16 v22, 0x1e

    const/high16 v24, 0x42000000    # 32.0f

    aput v24, v2, v22

    const/16 v22, 0x1f

    const v24, 0x80100

    aput v24, v2, v22

    const/high16 v22, 0x80000

    aput v22, v2, v7

    const v22, 0x42000100    # 32.000977f

    aput v22, v2, v13

    const/16 v22, 0x22

    const/16 v24, 0x100

    aput v24, v2, v22

    const/high16 v22, 0x2000000

    aput v22, v2, v21

    const/16 v22, 0x24

    const/high16 v24, 0x40000000    # 2.0f

    aput v24, v2, v22

    const/16 v22, 0x25

    const/high16 v24, 0x2080000

    aput v24, v2, v22

    const/16 v22, 0x26

    const v24, 0x42000100    # 32.000977f

    aput v24, v2, v22

    const/16 v22, 0x27

    const v24, 0x40080100

    aput v24, v2, v22

    const v22, 0x2000100

    aput v22, v2, v5

    const/high16 v22, 0x40000000    # 2.0f

    aput v22, v2, v12

    const/16 v22, 0x2a

    const/high16 v24, 0x42080000    # 34.0f

    aput v24, v2, v22

    const v22, 0x2080100

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x40080100

    aput v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x100

    aput v24, v2, v22

    const/16 v22, 0x2e

    const/high16 v24, 0x2000000

    aput v24, v2, v22

    const/16 v22, 0x2f

    const/high16 v24, 0x42080000    # 34.0f

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x42080100    # 34.000977f

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, 0x80100

    aput v24, v2, v22

    const/16 v22, 0x32

    const/high16 v24, 0x42000000    # 32.0f

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, 0x42080100    # 34.000977f

    aput v24, v2, v22

    const/16 v22, 0x34

    const/high16 v24, 0x2080000

    aput v24, v2, v22

    const/16 v22, 0x36

    const/high16 v24, 0x40080000    # 2.125f

    aput v24, v2, v22

    const/16 v22, 0x37

    const/high16 v24, 0x42000000    # 32.0f

    aput v24, v2, v22

    const/16 v22, 0x38

    const v24, 0x80100

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x2000100

    aput v24, v2, v22

    const/16 v22, 0x3a

    const v24, 0x40000100    # 2.000061f

    aput v24, v2, v22

    const/16 v22, 0x3b

    const/high16 v24, 0x80000

    aput v24, v2, v22

    const/16 v22, 0x3d

    const/high16 v24, 0x40080000    # 2.125f

    aput v24, v2, v22

    const/16 v22, 0x3e

    const v24, 0x2080100

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x40000100    # 2.000061f

    aput v24, v2, v22

    .line 107
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->SP5:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, 0x20000010

    aput v24, v2, v22

    const/high16 v22, 0x20400000

    aput v22, v2, v4

    const/16 v22, 0x4000

    aput v22, v2, v3

    const/16 v22, 0x3

    const v24, 0x20404010

    aput v24, v2, v22

    const/high16 v22, 0x20400000

    aput v22, v2, v6

    const/16 v22, 0x5

    aput v9, v2, v22

    const v22, 0x20404010

    aput v22, v2, v8

    const/16 v22, 0x7

    const/high16 v24, 0x400000

    aput v24, v2, v22

    const v22, 0x20004000

    aput v22, v2, v1

    const v22, 0x404010

    aput v22, v2, v11

    const/16 v22, 0xa

    aput v24, v2, v22

    const v22, 0x20000010

    aput v22, v2, v10

    const v22, 0x400010

    aput v22, v2, v15

    const/16 v22, 0xd

    const v24, 0x20004000

    aput v24, v2, v22

    const/high16 v22, 0x20000000

    aput v22, v2, v14

    const/16 v22, 0xf

    const/16 v24, 0x4010

    aput v24, v2, v22

    const/16 v22, 0x11

    const v24, 0x400010

    aput v24, v2, v22

    const v22, 0x20004010

    aput v22, v2, v17

    const/16 v22, 0x13

    const/16 v24, 0x4000

    aput v24, v2, v22

    const v22, 0x404000

    aput v22, v2, v18

    const/16 v22, 0x15

    const v24, 0x20004010

    aput v24, v2, v22

    aput v9, v2, v19

    const/16 v22, 0x17

    const v24, 0x20400010

    aput v24, v2, v22

    const v22, 0x20400010

    aput v22, v2, v0

    const/16 v22, 0x1a

    const v24, 0x404010

    aput v24, v2, v22

    const v22, 0x20404000

    aput v22, v2, v16

    const/16 v22, 0x1c

    const/16 v24, 0x4010

    aput v24, v2, v22

    const v22, 0x404000

    aput v22, v2, v23

    const/16 v22, 0x1e

    const v24, 0x20404000

    aput v24, v2, v22

    const/16 v22, 0x1f

    const/high16 v24, 0x20000000

    aput v24, v2, v22

    const v22, 0x20004000

    aput v22, v2, v7

    aput v9, v2, v13

    const/16 v22, 0x22

    const v24, 0x20400010

    aput v24, v2, v22

    const v22, 0x404000

    aput v22, v2, v21

    const/16 v22, 0x24

    const v24, 0x20404010

    aput v24, v2, v22

    const/16 v22, 0x25

    const/high16 v24, 0x400000

    aput v24, v2, v22

    const/16 v22, 0x26

    const/16 v24, 0x4010

    aput v24, v2, v22

    const/16 v22, 0x27

    const v24, 0x20000010

    aput v24, v2, v22

    const/high16 v22, 0x400000

    aput v22, v2, v5

    const v22, 0x20004000

    aput v22, v2, v12

    const/16 v22, 0x2a

    const/high16 v24, 0x20000000

    aput v24, v2, v22

    const/16 v22, 0x4010

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x20000010

    aput v24, v2, v22

    const/16 v22, 0x2d

    const v24, 0x20404010

    aput v24, v2, v22

    const/16 v22, 0x2e

    const v24, 0x404000

    aput v24, v2, v22

    const/16 v22, 0x2f

    const/high16 v24, 0x20400000

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x404010

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, 0x20404000

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, 0x20400010

    aput v24, v2, v22

    const/16 v22, 0x34

    aput v9, v2, v22

    const/16 v22, 0x35

    const/16 v24, 0x4000

    aput v24, v2, v22

    const/16 v22, 0x36

    const/high16 v24, 0x20400000

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x404010

    aput v24, v2, v22

    const/16 v22, 0x38

    const/16 v24, 0x4000

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x400010

    aput v24, v2, v22

    const/16 v22, 0x3a

    const v24, 0x20004010

    aput v24, v2, v22

    const/16 v22, 0x3c

    const v24, 0x20404000

    aput v24, v2, v22

    const/16 v22, 0x3d

    const/high16 v24, 0x20000000

    aput v24, v2, v22

    const/16 v22, 0x3e

    const v24, 0x400010

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x20004010

    aput v24, v2, v22

    .line 124
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->SP6:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const/high16 v24, 0x200000

    aput v24, v2, v22

    const v22, 0x4200002

    aput v22, v2, v4

    const v22, 0x4000802    # 1.5050005E-36f

    aput v22, v2, v3

    const/16 v22, 0x800

    aput v22, v2, v6

    const/16 v22, 0x5

    const v24, 0x4000802    # 1.5050005E-36f

    aput v24, v2, v22

    const v22, 0x200802

    aput v22, v2, v8

    const/16 v22, 0x7

    const v24, 0x4200800

    aput v24, v2, v22

    const v22, 0x4200802

    aput v22, v2, v1

    const/high16 v22, 0x200000

    aput v22, v2, v11

    const v22, 0x4000002

    aput v22, v2, v10

    aput v3, v2, v15

    const/16 v22, 0xd

    const/high16 v24, 0x4000000

    aput v24, v2, v22

    const v22, 0x4200002

    aput v22, v2, v14

    const/16 v22, 0xf

    const/16 v24, 0x802

    aput v24, v2, v22

    const v22, 0x4000800    # 1.5050001E-36f

    aput v22, v2, v9

    const/16 v22, 0x11

    const v24, 0x200802

    aput v24, v2, v22

    const v22, 0x200002

    aput v22, v2, v17

    const/16 v22, 0x13

    const v24, 0x4000800    # 1.5050001E-36f

    aput v24, v2, v22

    const v22, 0x4000002

    aput v22, v2, v18

    const/16 v22, 0x15

    const/high16 v24, 0x4200000

    aput v24, v2, v22

    const v22, 0x4200800

    aput v22, v2, v19

    const/16 v22, 0x17

    const v24, 0x200002

    aput v24, v2, v22

    const/high16 v22, 0x4200000

    aput v22, v2, v0

    const/16 v22, 0x19

    const/16 v24, 0x800

    aput v24, v2, v22

    const/16 v22, 0x1a

    const/16 v24, 0x802

    aput v24, v2, v22

    const v22, 0x4200802

    aput v22, v2, v16

    const/16 v22, 0x1c

    const v24, 0x200800

    aput v24, v2, v22

    aput v3, v2, v23

    const/16 v22, 0x1e

    const/high16 v24, 0x4000000

    aput v24, v2, v22

    const/16 v22, 0x1f

    const v24, 0x200800

    aput v24, v2, v22

    const/high16 v22, 0x4000000

    aput v22, v2, v7

    const v22, 0x200800

    aput v22, v2, v13

    const/16 v22, 0x22

    const/high16 v24, 0x200000

    aput v24, v2, v22

    const v22, 0x4000802    # 1.5050005E-36f

    aput v22, v2, v21

    const/16 v22, 0x24

    const v24, 0x4000802    # 1.5050005E-36f

    aput v24, v2, v22

    const/16 v22, 0x25

    const v24, 0x4200002

    aput v24, v2, v22

    const/16 v22, 0x26

    aput v24, v2, v22

    const/16 v22, 0x27

    aput v3, v2, v22

    const v22, 0x200002

    aput v22, v2, v5

    const/high16 v22, 0x4000000

    aput v22, v2, v12

    const/16 v22, 0x2a

    const v24, 0x4000800    # 1.5050001E-36f

    aput v24, v2, v22

    const/high16 v22, 0x200000

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x4200800

    aput v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x802

    aput v24, v2, v22

    const/16 v22, 0x2e

    const v24, 0x200802

    aput v24, v2, v22

    const/16 v22, 0x2f

    const v24, 0x4200800

    aput v24, v2, v22

    const/16 v22, 0x30

    const/16 v24, 0x802

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, 0x4000002

    aput v24, v2, v22

    const/16 v22, 0x32

    const v24, 0x4200802

    aput v24, v2, v22

    const/16 v22, 0x33

    const/high16 v24, 0x4200000

    aput v24, v2, v22

    const/16 v22, 0x34

    const v24, 0x200800

    aput v24, v2, v22

    const/16 v22, 0x36

    aput v3, v2, v22

    const/16 v22, 0x37

    const v24, 0x4200802

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x200802

    aput v24, v2, v22

    const/16 v22, 0x3a

    const/high16 v24, 0x4200000

    aput v24, v2, v22

    const/16 v22, 0x3b

    const/16 v24, 0x800

    aput v24, v2, v22

    const/16 v22, 0x3c

    const v24, 0x4000002

    aput v24, v2, v22

    const/16 v22, 0x3d

    const v24, 0x4000800    # 1.5050001E-36f

    aput v24, v2, v22

    const/16 v22, 0x3e

    const/16 v24, 0x800

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x200002

    aput v24, v2, v22

    .line 141
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->SP7:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, 0x10001040

    aput v24, v2, v22

    const/16 v22, 0x1000

    aput v22, v2, v4

    const/high16 v4, 0x40000

    aput v4, v2, v3

    const/4 v3, 0x3

    const v4, 0x10041040

    aput v4, v2, v3

    const/high16 v3, 0x10000000

    aput v3, v2, v6

    const/4 v3, 0x5

    const v4, 0x10001040

    aput v4, v2, v3

    const/16 v3, 0x40

    aput v3, v2, v8

    const/4 v3, 0x7

    const/high16 v4, 0x10000000

    aput v4, v2, v3

    const v3, 0x40040

    aput v3, v2, v1

    const/high16 v1, 0x10040000

    aput v1, v2, v11

    const/16 v1, 0xa

    const v3, 0x10041040

    aput v3, v2, v1

    const v1, 0x41000

    aput v1, v2, v10

    const v1, 0x10041000

    aput v1, v2, v15

    const/16 v1, 0xd

    const v3, 0x41040

    aput v3, v2, v1

    const/16 v1, 0x1000

    aput v1, v2, v14

    const/16 v1, 0xf

    const/16 v3, 0x40

    aput v3, v2, v1

    const/high16 v1, 0x10040000

    aput v1, v2, v9

    const/16 v1, 0x11

    const v3, 0x10000040

    aput v3, v2, v1

    const v1, 0x10001000

    aput v1, v2, v17

    const/16 v1, 0x13

    const/16 v3, 0x1040

    aput v3, v2, v1

    const v1, 0x41000

    aput v1, v2, v18

    const/16 v1, 0x15

    const v3, 0x40040

    aput v3, v2, v1

    const v1, 0x10040040

    aput v1, v2, v19

    const/16 v1, 0x17

    const v3, 0x10041000

    aput v3, v2, v1

    const/16 v1, 0x1040

    aput v1, v2, v0

    const v0, 0x10040040

    aput v0, v2, v16

    const/16 v0, 0x1c

    const v1, 0x10000040

    aput v1, v2, v0

    const v0, 0x10001000

    aput v0, v2, v23

    const/16 v0, 0x1e

    const v1, 0x41040

    aput v1, v2, v0

    const/16 v0, 0x1f

    const/high16 v1, 0x40000

    aput v1, v2, v0

    const v0, 0x41040

    aput v0, v2, v7

    const/high16 v0, 0x40000

    aput v0, v2, v13

    const/16 v0, 0x22

    const v1, 0x10041000

    aput v1, v2, v0

    const/16 v0, 0x1000

    aput v0, v2, v21

    const/16 v0, 0x24

    const/16 v1, 0x40

    aput v1, v2, v0

    const/16 v0, 0x25

    const v1, 0x10040040

    aput v1, v2, v0

    const/16 v0, 0x26

    const/16 v1, 0x1000

    aput v1, v2, v0

    const/16 v0, 0x27

    const v1, 0x41040

    aput v1, v2, v0

    const v0, 0x10001000

    aput v0, v2, v5

    const/16 v0, 0x40

    aput v0, v2, v12

    const/16 v0, 0x2a

    const v1, 0x10000040

    aput v1, v2, v0

    const/high16 v0, 0x10040000

    aput v0, v2, v20

    const/16 v0, 0x2c

    const v1, 0x10040040

    aput v1, v2, v0

    const/16 v0, 0x2d

    const/high16 v1, 0x10000000

    aput v1, v2, v0

    const/16 v0, 0x2e

    const/high16 v1, 0x40000

    aput v1, v2, v0

    const/16 v0, 0x2f

    const v1, 0x10001040

    aput v1, v2, v0

    const/16 v0, 0x31

    const v1, 0x10041040

    aput v1, v2, v0

    const/16 v0, 0x32

    const v1, 0x40040

    aput v1, v2, v0

    const/16 v0, 0x33

    const v1, 0x10000040

    aput v1, v2, v0

    const/16 v0, 0x34

    const/high16 v1, 0x10040000

    aput v1, v2, v0

    const/16 v0, 0x35

    const v1, 0x10001000

    aput v1, v2, v0

    const/16 v0, 0x36

    const v1, 0x10001040

    aput v1, v2, v0

    const/16 v0, 0x38

    const v1, 0x10041040

    aput v1, v2, v0

    const/16 v0, 0x39

    const v1, 0x41000

    aput v1, v2, v0

    const/16 v0, 0x3a

    aput v1, v2, v0

    const/16 v0, 0x3b

    const/16 v1, 0x1040

    aput v1, v2, v0

    const/16 v0, 0x3c

    aput v1, v2, v0

    const/16 v0, 0x3d

    const v1, 0x40040

    aput v1, v2, v0

    const/16 v0, 0x3e

    const/high16 v1, 0x10000000

    aput v1, v2, v0

    const/16 v0, 0x3f

    const v1, 0x10041000

    aput v1, v2, v0

    .line 158
    sput-object v2, Lch/ethz/ssh2/crypto/cipher/DES;->SP8:[I

    return-void

    nop

    :array_0
    .array-data 2
        0x1s
        0x23s
        0x45s
        0x67s
        0x89s
        0xabs
        0xcds
        0xefs
        0xfes
        0xdcs
        0xbas
        0x98s
        0x76s
        0x54s
        0x32s
        0x10s
        0x89s
        0xabs
        0xcds
        0xefs
        0x1s
        0x23s
        0x45s
        0x67s
    .end array-data

    :array_1
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

    :array_2
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lch/ethz/ssh2/crypto/cipher/DES;->workingKey:[I

    return-void
.end method


# virtual methods
.method public desFunc([I[BI[BI)V
    .locals 20

    add-int/lit8 v0, p3, 0x0

    .line 1
    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p3, 0x1

    .line 2
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x2

    .line 3
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x3

    .line 4
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x4

    .line 6
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, p3, 0x5

    .line 7
    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, p3, 0x6

    .line 8
    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    add-int/lit8 v3, p3, 0x7

    .line 9
    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    ushr-int/lit8 v3, v0, 0x4

    xor-int/2addr v3, v1

    const v4, 0xf0f0f0f

    and-int/2addr v3, v4

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v3, 0x4

    xor-int/2addr v0, v3

    ushr-int/lit8 v3, v0, 0x10

    xor-int/2addr v3, v1

    const v5, 0xffff

    and-int/2addr v3, v5

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v3, 0x10

    xor-int/2addr v0, v3

    ushr-int/lit8 v3, v1, 0x2

    xor-int/2addr v3, v0

    const v6, 0x33333333

    and-int/2addr v3, v6

    xor-int/2addr v0, v3

    shl-int/lit8 v3, v3, 0x2

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v1, 0x8

    xor-int/2addr v3, v0

    const v7, 0xff00ff

    and-int/2addr v3, v7

    xor-int/2addr v0, v3

    shl-int/2addr v3, v2

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v3

    and-int/lit8 v1, v1, -0x1

    xor-int v3, v0, v1

    const v8, -0x55555556

    and-int/2addr v3, v8

    xor-int/2addr v0, v3

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    and-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v3

    and-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    shl-int/lit8 v3, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v3

    xor-int v3, v0, v1

    and-int/2addr v3, v8

    xor-int/2addr v0, v3

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v3

    ushr-int/lit8 v3, v0, 0x8

    xor-int/2addr v3, v1

    and-int/2addr v3, v7

    xor-int/2addr v1, v3

    shl-int/lit8 v2, v3, 0x8

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x2

    xor-int/2addr v2, v1

    and-int/2addr v2, v6

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v2, 0x2

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v2, v0

    and-int/2addr v2, v5

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x4

    xor-int/2addr v2, v0

    and-int/2addr v2, v4

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x4

    xor-int/2addr v1, v2

    add-int/lit8 v2, p5, 0x0

    ushr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 77
    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x1

    ushr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 78
    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x2

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 79
    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 80
    aput-byte v1, p4, v2

    add-int/lit8 v1, p5, 0x4

    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 81
    aput-byte v2, p4, v1

    add-int/lit8 v1, p5, 0x5

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 82
    aput-byte v2, p4, v1

    add-int/lit8 v1, p5, 0x6

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 83
    aput-byte v2, p4, v1

    add-int/lit8 v1, p5, 0x7

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 84
    aput-byte v0, p4, v1

    return-void

    :cond_0
    shl-int/lit8 v9, v1, 0x1c

    ushr-int/lit8 v10, v1, 0x4

    or-int/2addr v9, v10

    mul-int/lit8 v10, v3, 0x4

    add-int/lit8 v11, v10, 0x0

    .line 85
    aget v11, p1, v11

    xor-int/2addr v9, v11

    .line 86
    sget-object v11, Lch/ethz/ssh2/crypto/cipher/DES;->SP7:[I

    and-int/lit8 v12, v9, 0x3f

    aget v12, v11, v12

    .line 87
    sget-object v13, Lch/ethz/ssh2/crypto/cipher/DES;->SP5:[I

    ushr-int/lit8 v14, v9, 0x8

    and-int/lit8 v14, v14, 0x3f

    aget v14, v13, v14

    or-int/2addr v12, v14

    .line 88
    sget-object v14, Lch/ethz/ssh2/crypto/cipher/DES;->SP3:[I

    ushr-int/lit8 v15, v9, 0x10

    and-int/lit8 v15, v15, 0x3f

    aget v15, v14, v15

    or-int/2addr v12, v15

    .line 89
    sget-object v15, Lch/ethz/ssh2/crypto/cipher/DES;->SP1:[I

    ushr-int/lit8 v9, v9, 0x18

    and-int/lit8 v9, v9, 0x3f

    aget v9, v15, v9

    or-int/2addr v9, v12

    add-int/lit8 v12, v10, 0x1

    .line 90
    aget v12, p1, v12

    xor-int/2addr v12, v1

    .line 91
    sget-object v16, Lch/ethz/ssh2/crypto/cipher/DES;->SP8:[I

    and-int/lit8 v17, v12, 0x3f

    aget v17, v16, v17

    or-int v9, v9, v17

    .line 92
    sget-object v17, Lch/ethz/ssh2/crypto/cipher/DES;->SP6:[I

    ushr-int/lit8 v18, v12, 0x8

    and-int/lit8 v18, v18, 0x3f

    aget v18, v17, v18

    or-int v9, v9, v18

    .line 93
    sget-object v18, Lch/ethz/ssh2/crypto/cipher/DES;->SP4:[I

    ushr-int/lit8 v19, v12, 0x10

    and-int/lit8 v19, v19, 0x3f

    aget v19, v18, v19

    or-int v9, v9, v19

    .line 94
    sget-object v19, Lch/ethz/ssh2/crypto/cipher/DES;->SP2:[I

    ushr-int/lit8 v12, v12, 0x18

    and-int/lit8 v12, v12, 0x3f

    aget v12, v19, v12

    or-int/2addr v9, v12

    xor-int/2addr v0, v9

    shl-int/lit8 v9, v0, 0x1c

    ushr-int/lit8 v12, v0, 0x4

    or-int/2addr v9, v12

    add-int/lit8 v12, v10, 0x2

    .line 97
    aget v12, p1, v12

    xor-int/2addr v9, v12

    and-int/lit8 v12, v9, 0x3f

    .line 98
    aget v11, v11, v12

    ushr-int/lit8 v12, v9, 0x8

    and-int/lit8 v12, v12, 0x3f

    .line 99
    aget v12, v13, v12

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x10

    and-int/lit8 v12, v12, 0x3f

    .line 100
    aget v12, v14, v12

    or-int/2addr v11, v12

    ushr-int/lit8 v9, v9, 0x18

    and-int/lit8 v9, v9, 0x3f

    .line 101
    aget v9, v15, v9

    or-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x3

    .line 102
    aget v10, p1, v10

    xor-int/2addr v10, v0

    and-int/lit8 v11, v10, 0x3f

    .line 103
    aget v11, v16, v11

    or-int/2addr v9, v11

    ushr-int/lit8 v11, v10, 0x8

    and-int/lit8 v11, v11, 0x3f

    .line 104
    aget v11, v17, v11

    or-int/2addr v9, v11

    ushr-int/lit8 v11, v10, 0x10

    and-int/lit8 v11, v11, 0x3f

    .line 105
    aget v11, v18, v11

    or-int/2addr v9, v11

    ushr-int/lit8 v10, v10, 0x18

    and-int/lit8 v10, v10, 0x3f

    .line 106
    aget v10, v19, v10

    or-int/2addr v9, v10

    xor-int/2addr v1, v9

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public generateWorkingKey(Z[BI)[I
    .locals 12

    const/16 v0, 0x20

    new-array v1, v0, [I

    const/16 v2, 0x38

    new-array v3, v2, [Z

    new-array v4, v2, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-lt v6, v2, :cond_a

    const/4 v8, 0x0

    :goto_1
    const/16 p2, 0x10

    if-lt v8, p2, :cond_1

    :goto_2
    if-ne v5, v0, :cond_0

    return-object v1

    .line 74
    :cond_0
    aget p1, v1, v5

    add-int/lit8 p3, v5, 0x1

    .line 75
    aget v2, v1, p3

    const/high16 v3, 0xfc0000

    and-int v4, p1, v3

    shl-int/lit8 v4, v4, 0x6

    and-int/lit16 v6, p1, 0xfc0

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v4, v6

    and-int/2addr v3, v2

    ushr-int/lit8 v3, v3, 0xa

    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xfc0

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    .line 77
    aput v3, v1, v5

    const v3, 0x3f000

    and-int v4, p1, v3

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/2addr p1, p2

    or-int/2addr p1, v4

    and-int/2addr v3, v2

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr p1, v3

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr p1, v2

    .line 80
    aput p1, v1, p3

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    shl-int/lit8 p2, v8, 0x1

    goto :goto_3

    :cond_2
    rsub-int/lit8 p2, v8, 0xf

    shl-int/2addr p2, v7

    :goto_3
    move v9, p2

    add-int/lit8 v10, v9, 0x1

    .line 81
    aput v5, v1, v10

    aput v5, v1, v9

    const/4 p2, 0x0

    :goto_4
    const/16 p3, 0x1c

    if-lt p2, p3, :cond_8

    :goto_5
    if-lt p3, v2, :cond_6

    const/4 p2, 0x0

    :goto_6
    const/16 p3, 0x18

    if-lt p2, p3, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 111
    :cond_3
    sget-object p3, Lch/ethz/ssh2/crypto/cipher/DES;->pc2:[B

    aget-byte v6, p3, p2

    aget-boolean v6, v4, v6

    if-eqz v6, :cond_4

    .line 113
    aget v6, v1, v9

    sget-object v11, Lch/ethz/ssh2/crypto/cipher/DES;->bigbyte:[I

    aget v11, v11, p2

    or-int/2addr v6, v11

    aput v6, v1, v9

    :cond_4
    add-int/lit8 v6, p2, 0x18

    .line 116
    aget-byte p3, p3, v6

    aget-boolean p3, v4, p3

    if-eqz p3, :cond_5

    .line 118
    aget p3, v1, v10

    sget-object v6, Lch/ethz/ssh2/crypto/cipher/DES;->bigbyte:[I

    aget v6, v6, p2

    or-int/2addr p3, v6

    aput p3, v1, v10

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 119
    :cond_6
    sget-object p2, Lch/ethz/ssh2/crypto/cipher/DES;->totrot:[B

    aget-byte p2, p2, v8

    add-int/2addr p2, p3

    if-ge p2, v2, :cond_7

    .line 122
    aget-boolean p2, v3, p2

    aput-boolean p2, v4, p3

    goto :goto_7

    :cond_7
    add-int/lit8 p2, p2, -0x1c

    .line 126
    aget-boolean p2, v3, p2

    aput-boolean p2, v4, p3

    :goto_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 127
    :cond_8
    sget-object v6, Lch/ethz/ssh2/crypto/cipher/DES;->totrot:[B

    aget-byte v6, v6, v8

    add-int/2addr v6, p2

    if-ge v6, p3, :cond_9

    .line 130
    aget-boolean p3, v3, v6

    aput-boolean p3, v4, p2

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v6, -0x1c

    .line 134
    aget-boolean p3, v3, v6

    aput-boolean p3, v4, p2

    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 135
    :cond_a
    sget-object v8, Lch/ethz/ssh2/crypto/cipher/DES;->pc1:[B

    aget-byte v8, v8, v6

    ushr-int/lit8 v9, v8, 0x3

    add-int/2addr v9, p3

    .line 137
    aget-byte v9, p2, v9

    sget-object v10, Lch/ethz/ssh2/crypto/cipher/DES;->bytebit:[S

    and-int/lit8 v8, v8, 0x7

    aget-short v8, v10, v8

    and-int/2addr v8, v9

    if-eqz v8, :cond_b

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    :goto_9
    aput-boolean v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(Z[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lch/ethz/ssh2/crypto/cipher/DES;->generateWorkingKey(Z[BI)[I

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/crypto/cipher/DES;->workingKey:[I

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 6

    .line 1
    iget-object v1, p0, Lch/ethz/ssh2/crypto/cipher/DES;->workingKey:[I

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lch/ethz/ssh2/crypto/cipher/DES;->desFunc([I[BI[BI)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DES engine not initialised!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
