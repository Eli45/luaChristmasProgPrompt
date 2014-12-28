-- Printing gift verses --
gifts =	{
	"a Partridge in a Pear Tree",		"Two Turtle Doves",
	"Three French Hens",			"Four Calling Birds",
	"Five Gold Rings",			"Six Geese-a-Laying",
	"Seven Swans-a-Swimming",		"Eight Maids-a-Milking",
	"Nine Ladies Dancing ",			"Ten Lords-a-Leaping",
	"Eleven Pipers Piping",			"Twelve Drummers Drumming"
}
numbers = { "first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth" }
presentsPerDay = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
presents = 0;

function printPresents(numDay)
	print("On the " .. numbers[numDay] .. " day of Christmas\nmy true love sent to me");
	for i = numDay, 1, -1 do
		if i == 1 then
			print(gifts[i]);
		elseif i == 2 then
			print(gifts[i] .. ",\nand");
		else
			print(gifts[i] .. ",");
		end
		presents = presents + presentsPerDay[i];
	end
end

print("What day of Christmas is it?");
num = tonumber(io.read());

if num == 1 then
	print(gifts[1]);
elseif num == 2 then
	print(gifts[2] .. "\nand\n" .. gifts[1]);
else
	for i = num, 1, -1 do
		printPresents(i);
		print("-----------------------");
	end
end

print("\nOn the " .. numbers[1] .. " day you recieved " .. presentsPerDay[1] .. " present.");
j = 1;
for i = 2, num, 1 do print("On the " .. numbers[i] .. " day you recieved " .. presentsPerDay[i] + j .. " presents.");j = j + presentsPerDay[i]; end
print("You recieved " .. presents .. " presents over " .. num .. " days.\n");
