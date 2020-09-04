CC=g++

OC4CFLAGS = `pkg-config --cflags opencv4`
OC4LIBS = `pkg-config --libs opencv4`

CFLAGS = -I. -fPIC -frtti -pthread $(OC4CFLAGS)
LIBS = $(OC4LIBS)

OBJS := object_detection.o

EXECUTABLE = object_detection
OBJDIR = bin
OPTIMIZATION = # -Os 

all: $(OBJS)
	$(CC) $(OBJDIR)/object_detection.o -o $(OBJDIR)/$(EXECUTABLE) $(CFLAGS) $(LIBS)

object_detection.o: object_detection.cpp
	$(CC) -c $(OPTIMIZATION) object_detection.cpp -o $(OBJDIR)/object_detection.o $(CFLAGS)

clean:
	rm -f $(OBJDIR)/*.o
	rm -f $(OBJDIR)/$(EXECUTABLE)

