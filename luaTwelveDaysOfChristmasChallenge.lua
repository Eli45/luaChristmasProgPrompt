gifts =	{
	"A Partridge in a Pear Tree",		"Two Turtle Doves",
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

for i = num, 1, -1 do
	printPresents(i);
	print("-----------------------");
end

print("\nOn the " .. numbers[1] .. " day you received " .. presentsPerDay[1] .. " present.");
j = 1;
for i = 2, num, 1 do print("On the " .. numbers[i] .. " day you received " .. presentsPerDay[i] + j .. " presents.");j = j + presentsPerDay[i]; end
print("You received " .. presents .. " presents over " .. num .. " days.\n");
--[[
Example Output:
	>IN: 3
	<OUT: On the third day of Christmas
        my true love sent to me
	Three French Hens,
	Two Turtle Doves,
	and
	A Partridge in a Pear Tree
	-----------------------
	On the second day of Christmas
	my true love sent to me
	Two Turtle Doves,
	and
	A Partridge in a Pear Tree
	-----------------------
	On the first day of Christmas
	my true love sent to me
	A Partridge in a Pear Tree
	-----------------------
	
	On the first day you received 1 present.
	On the second day you received 3 presents.
	On the third day you received 6 presents.
	You recieved 10 presents over 3 days.
--]]
